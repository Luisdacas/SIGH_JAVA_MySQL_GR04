package ec.edu.monster.controller;

import ec.edu.monster.dao.CargoDAO;
import ec.edu.monster.dao.DepartamentoDAO;
import ec.edu.monster.model.Cargo;
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

@Named("cargoController")
@ViewScoped
public class CargoController implements Serializable {

    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = Logger.getLogger(CargoController.class.getName());

    private transient CargoDAO cargoDao;
    private transient DepartamentoDAO departamentoDao;

    private CargoDAO getCargoDao() {
        if (cargoDao == null) {
            cargoDao = new CargoDAO();
        }
        return cargoDao;
    }

    private DepartamentoDAO getDepartamentoDao() {
        if (departamentoDao == null) {
            departamentoDao = new DepartamentoDAO();
        }
        return departamentoDao;
    }

    private List<Cargo> lista = new ArrayList<>();
    private List<Departamento> departamentos = new ArrayList<>(); // datos del list box

    private Cargo nuevoCargo = new Cargo();
    private Cargo cargoEdicion = new Cargo();
    private boolean editando = false;

    @PostConstruct
    public void init() {
        cargarDepartamentos();
        cargar();
    }

    private void cargar() {
        try {
            lista = getCargoDao().listar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error al cargar cargos", e);
            lista = new ArrayList<>();
            error("No se pudo cargar la lista de cargos.");
        }
    }

    private void cargarDepartamentos() {
        try {
            departamentos = getDepartamentoDao().listar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error al cargar departamentos", e);
            departamentos = new ArrayList<>();
            error("No se pudo cargar la lista de departamentos.");
        }
    }

    // ---------------- REGISTRAR ----------------
    public String registrar() {
        String codigo = limpiarCodigo(nuevoCargo.getCodigo());
        String descripcion = limpiarTexto(nuevoCargo.getDescripcion());
        String depCodigo = limpiarTexto(nuevoCargo.getDepartamentoCodigo());

        if (!validar(codigo, descripcion, depCodigo, true)) {
            return null;
        }

        nuevoCargo.setCodigo(codigo);
        nuevoCargo.setDescripcion(descripcion);
        nuevoCargo.setDepartamentoCodigo(depCodigo);

        try {
            if (!getDepartamentoDao().existe(depCodigo)) {
                error("El departamento seleccionado ya no existe. Se actualizó la lista.");
                cargarDepartamentos();
                return null;
            }
            if (getCargoDao().existe(codigo)) {
                error("Ya existe un cargo con el código " + codigo + ".");
                return null;
            }
            getCargoDao().insertar(nuevoCargo);
            info("Cargo " + codigo + " registrado correctamente.");
            nuevoCargo = new Cargo();
            cargar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error SQL al registrar cargo " + codigo, e);
            if (e.getErrorCode() == 1062) {
                error("Ya existe un cargo con el código " + codigo + ".");
            } else if (e.getErrorCode() == 1452) {
                error("El departamento seleccionado no es válido.");
            } else {
                error("No se pudo registrar el cargo.");
            }
        }
        return null;
    }

    public String limpiar() {
        nuevoCargo = new Cargo();
        return null;
    }

    // ---------------- MODIFICAR ----------------
    public String editar(Cargo c) {
        cargoEdicion = new Cargo(c.getCodigo(), c.getDescripcion(),
                                 c.getDepartamentoCodigo(), c.getDepartamentoDescripcion());
        editando = true;
        return null;
    }

    public String actualizar() {
        String codigo = cargoEdicion.getCodigo();
        String descripcion = limpiarTexto(cargoEdicion.getDescripcion());
        String depCodigo = limpiarTexto(cargoEdicion.getDepartamentoCodigo());

        if (!validar(codigo, descripcion, depCodigo, false)) {
            return null;
        }

        cargoEdicion.setDescripcion(descripcion);
        cargoEdicion.setDepartamentoCodigo(depCodigo);

        try {
            int filas = getCargoDao().actualizar(cargoEdicion);
            if (filas == 0) {
                if (getCargoDao().existe(codigo)) {
                    info("El cargo " + codigo + " no tenía cambios.");
                    cerrarEdicion();
                    cargar();
                } else {
                    error("No se encontró el cargo. Actualice el listado y vuelva a intentar.");
                }
                return null;
            }
            info("Cargo " + codigo + " actualizado correctamente.");
            cerrarEdicion();
            cargar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error SQL al actualizar cargo " + codigo, e);
            if (e.getErrorCode() == 1452) {
                error("El departamento seleccionado no es válido.");
            } else if (e.getErrorCode() == 1142 || e.getErrorCode() == 1143) {
                error("La cuenta de MariaDB no tiene permiso UPDATE sobre PECAR_CARGO.");
            } else {
                error("No se pudo actualizar el cargo. Revise el registro de Payara.");
            }
        }
        return null;
    }

    public String cancelarEdicion() {
        cerrarEdicion();
        return null;
    }

    private void cerrarEdicion() {
        editando = false;
        cargoEdicion = new Cargo();
    }

    // ---------------- ELIMINAR ----------------
    public String eliminar(Cargo c) {
        if (c == null || c.getCodigo() == null) {
            error("No se pudo identificar el cargo a eliminar.");
            return null;
        }
        String codigo = c.getCodigo().trim();
        try {
            int filas = getCargoDao().eliminar(codigo);
            if (filas == 0) {
                error("El cargo " + codigo + " ya no existe. Actualice el listado.");
            } else {
                info("Cargo " + codigo + " eliminado correctamente.");
            }
            cargar();
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error SQL al eliminar cargo " + codigo, e);
            if (e.getErrorCode() == 1142 || e.getErrorCode() == 1143) {
                error("La cuenta de MariaDB no tiene permiso DELETE sobre PECAR_CARGO.");
            } else if (e.getErrorCode() == 1451) {
                error("No se puede eliminar: el cargo tiene registros asociados.");
            } else {
                error("No se pudo eliminar el cargo (" + e.getMessage() + ").");
            }
        }
        return null;
    }

    // ---------------- UTILIDADES ----------------
    private boolean validar(String codigo, String descripcion, String depCodigo, boolean validarCodigo) {
        if (validarCodigo && codigo.length() != 3) {
            error("El código debe tener exactamente 3 caracteres.");
            return false;
        }
        if (depCodigo.isEmpty()) {
            error("Seleccione un departamento de la lista.");
            return false;
        }
        if (descripcion.isEmpty()) {
            error("Ingrese la descripción del cargo.");
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
    public List<Cargo> getLista() { return lista; }
    public List<Departamento> getDepartamentos() { return departamentos; }

    public Cargo getNuevoCargo() { return nuevoCargo; }
    public void setNuevoCargo(Cargo c) { this.nuevoCargo = c; }

    public Cargo getCargoEdicion() { return cargoEdicion; }
    public void setCargoEdicion(Cargo c) { this.cargoEdicion = c; }

    public boolean isEditando() { return editando; }
}