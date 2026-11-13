package ec.edu.monster.controller;

import ec.edu.monster.dao.DepartamentoDAO;
import ec.edu.monster.model.Departamento;
import jakarta.annotation.PostConstruct;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.faces.view.ViewScoped;
import jakarta.inject.Named;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Named("departamentoController")
@ViewScoped
public class DepartamentoController implements Serializable {

    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = Logger.getLogger(DepartamentoController.class.getName());

    // El controlador es @ViewScoped; el DAO no debe serializarse junto con la vista.
    private transient DepartamentoDAO dao;

    private DepartamentoDAO getDao() {
        if (dao == null) {
            dao = new DepartamentoDAO();
        }
        return dao;
    }

    private List<Departamento> lista = new ArrayList<>();

    // Formulario de registro (formNuevo)
    private Departamento nuevoDepartamento = new Departamento();

    // Formulario de modificacion (formEditar)
    private Departamento departamentoEdicion = new Departamento();
    private boolean editando = false;

    @PostConstruct
    public void init() {
        cargar();
    }

    private void cargar() {
        try {
            lista = getDao().listar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error al cargar departamentos", e);
            lista = new ArrayList<>();
            error("No se pudo cargar la lista de departamentos.");
        }
    }

    // ---------------- REGISTRAR ----------------
    public String registrar() {
        String codigo = limpiarCodigo(nuevoDepartamento.getCodigo());
        String descripcion = limpiarTexto(nuevoDepartamento.getDescripcion());

        if (!validar(codigo, descripcion, true)) {
            return null;
        }

        nuevoDepartamento.setCodigo(codigo);
        nuevoDepartamento.setDescripcion(descripcion);

        try {
            if (getDao().existe(codigo)) {
                error("Ya existe un departamento con el código " + codigo + ".");
                return null;
            }
            getDao().insertar(nuevoDepartamento);
            info("Departamento " + codigo + " registrado correctamente.");
            nuevoDepartamento = new Departamento();
            cargar();
        } catch (SQLException e) {
            if (e.getErrorCode() == 1062) {
                error("Ya existe un departamento con el código " + codigo + ".");
            } else {
                error("No se pudo registrar el departamento.");
            }
        }
        return null;
    }

    public String limpiar() {
        nuevoDepartamento = new Departamento();
        departamentoEdicion = new Departamento();
        editando = false;
        return null;
    }

    // ---------------- MODIFICAR ----------------
    /**
     * Abre la ventana de modificacion con una copia del registro elegido.
     */
    public String editar(Departamento d) {
        departamentoEdicion = new Departamento(d.getCodigo(), d.getDescripcion());
        editando = true;
        return null;
    }

    public String actualizar() {
        String codigo = departamentoEdicion.getCodigo();
        String descripcion = limpiarTexto(departamentoEdicion.getDescripcion());

        if (!validar(codigo, descripcion, false)) {
            return null;
        }

        departamentoEdicion.setDescripcion(descripcion);

        try {
            int filas = getDao().actualizar(departamentoEdicion);
            if (filas == 0) {
                if (getDao().existe(codigo)) {
                    info("La descripcion del departamento " + codigo + " no tenia cambios.");
                    cerrarEdicion();
                    cargar();
                } else {
                    error("No se encontro el departamento. Actualice el listado y vuelva a intentar.");
                }
                return null;
            }
            info("Departamento " + codigo + " actualizado correctamente.");
            cerrarEdicion();
            cargar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error SQL al actualizar departamento " + codigo, e);
            if (e.getErrorCode() == 1142 || e.getErrorCode() == 1143) {
                error("La cuenta de MariaDB no tiene permiso UPDATE sobre PEDEP_DEPAR.");
            } else {
                error("No se pudo actualizar el departamento. Revise el registro de Payara.");
            }
        }
        return null;
    }

    public String cancelarEdicion() {
        cerrarEdicion();
        nuevoDepartamento = new Departamento(); // Limpia también el formulario de registro si se desea
        return null;
    }

    private void cerrarEdicion() {
        editando = false;
        departamentoEdicion = new Departamento();
    }

    // ---------------- ELIMINAR ----------------
    public String eliminar(Departamento d) {
        if (d == null || d.getCodigo() == null) {
            error("No se pudo identificar el departamento a eliminar.");
            return null;
        }

        String codigo = d.getCodigo().trim();
        try {
            int filas = getDao().eliminar(codigo);
            if (filas == 0) {
                if (!getDao().existe(codigo)) {
                    error("El departamento " + codigo + " ya no existe. Actualice el listado.");
                } else {
                    error("No se pudo eliminar el departamento " + codigo + ".");
                }
            } else {
                info("Departamento " + codigo + " eliminado correctamente.");
            }
            cargar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error SQL al eliminar departamento " + codigo, e);
            if (e.getErrorCode() == 1142 || e.getErrorCode() == 1143) {
                error("La cuenta de MariaDB no tiene permiso DELETE sobre PEDEP_DEPAR.");
            } else if (e.getErrorCode() == 1451) {
                error("No se puede eliminar: el departamento tiene registros asociados protegidos por la base de datos.");
            } else {
                error("No se pudo eliminar el departamento (" + e.getMessage() + ").");
            }
        }
        return null;
    }

    // ---------------- UTILIDADES ----------------
    private boolean validar(String codigo, String descripcion, boolean validarCodigo) {
        if (validarCodigo && codigo.length() != 3) {
            error("El código debe tener exactamente 3 caracteres.");
            return false;
        }
        if (descripcion.isEmpty()) {
            error("Ingrese la descripción del departamento.");
            return false;
        }
        if (descripcion.length() > 50) {
            error("La descripción no puede superar 50 caracteres.");
            return false;
        }
        return true;
    }

    private String limpiarCodigo(String s) {
        return s == null ? "" : s.trim().toUpperCase();
    }

    private String limpiarTexto(String s) {
        return s == null ? "" : s.trim();
    }

    private void info(String msg) {
        FacesContext.getCurrentInstance().addMessage(null,
                new FacesMessage(FacesMessage.SEVERITY_INFO, msg, null));
    }

    private void error(String msg) {
        FacesContext.getCurrentInstance().addMessage(null,
                new FacesMessage(FacesMessage.SEVERITY_ERROR, msg, null));
    }

    // ---------------- GETTERS Y SETTERS ----------------
    public List<Departamento> getLista() {
        return lista;
    }

    public Departamento getNuevoDepartamento() {
        return nuevoDepartamento;
    }

    public void setNuevoDepartamento(Departamento d) {
        this.nuevoDepartamento = d;
    }

    public Departamento getDepartamentoEdicion() {
        return departamentoEdicion;
    }

    public void setDepartamentoEdicion(Departamento d) {
        this.departamentoEdicion = d;
    }

    public boolean isEditando() {
        return editando;
    }
}