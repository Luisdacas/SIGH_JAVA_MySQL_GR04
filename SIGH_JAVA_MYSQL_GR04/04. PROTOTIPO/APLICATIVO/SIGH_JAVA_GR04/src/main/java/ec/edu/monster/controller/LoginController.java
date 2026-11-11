package ec.edu.monster.controller;

import ec.edu.monster.dao.UsuarioDAO;
import ec.edu.monster.model.Usuario;
import ec.edu.monster.util.PasswordUtil;

import jakarta.enterprise.context.RequestScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.context.FacesContext;
import jakarta.inject.Named;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@Named("loginController")
@RequestScoped
public class LoginController {

    private static final Logger LOGGER =
            Logger.getLogger(LoginController.class.getName());

    // Confirmar este codigo con los estados reales de SIGHO.
    private static final String ESTADO_ACTIVO = "A";

    private String codigo;
    private String clave;

    public String iniciarSesion() {

        FacesContext contexto = FacesContext.getCurrentInstance();

        try {
            if (codigo == null || codigo.isBlank()
                    || clave == null || clave.isEmpty()) {

                mostrarError("Ingrese usuario y contraseña.");
                return null;
            }

            UsuarioDAO usuarioDAO = new UsuarioDAO();

            Usuario usuario =
                    usuarioDAO.buscarPorCodigo(codigo.trim());

            // Verificar credenciales y estado de la cuenta.
            if (usuario == null
                    || !PasswordUtil.verificar(
                            clave, usuario.getContrasenaAlmacenada())
                    || !ESTADO_ACTIVO.equals(usuario.getCodigoEstado())) {

                mostrarError("Credenciales incorrectas o cuenta no habilitada.");
                return null;
            }

            // Crear sesion y renovar el identificador.
            HttpServletRequest request =
                    (HttpServletRequest) contexto
                            .getExternalContext().getRequest();

            HttpSession sesion = request.getSession(true);
            request.changeSessionId();

            sesion.setAttribute(
                    "usuarioAutenticado", usuario.getCodigo());

            return "/inicio.xhtml?faces-redirect=true";

        } catch (SQLException ex) {

            LOGGER.log(Level.SEVERE,
                    "Error al consultar el usuario", ex);

            mostrarError(
                    "No se pudo procesar el inicio de sesión.");
            return null;

        } finally {
            clave = null;
        }
    }

    public String verificarSesion() {

        HttpServletRequest request =
                (HttpServletRequest) FacesContext
                        .getCurrentInstance()
                        .getExternalContext()
                        .getRequest();

        HttpSession sesion = request.getSession(false);

        if (sesion == null
                || sesion.getAttribute("usuarioAutenticado") == null) {

            return "/login.xhtml?faces-redirect=true";
        }

        return null;
    }

    public String cerrarSesion() {

        HttpServletRequest request =
                (HttpServletRequest) FacesContext
                        .getCurrentInstance()
                        .getExternalContext()
                        .getRequest();

        HttpSession sesion = request.getSession(false);

        if (sesion != null) {
            sesion.invalidate();
        }

        return "/login.xhtml?faces-redirect=true";
    }

    private void mostrarError(String mensaje) {

        FacesContext.getCurrentInstance().addMessage(
                null,
                new FacesMessage(
                        FacesMessage.SEVERITY_ERROR,
                        mensaje,
                        null));
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
}