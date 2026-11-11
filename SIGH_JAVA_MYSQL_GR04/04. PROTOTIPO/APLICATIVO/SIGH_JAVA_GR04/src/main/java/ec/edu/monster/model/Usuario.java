package ec.edu.monster.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "XEUSU_USUAR")
public class Usuario implements Serializable {
    
    @Id
    @Column(name = "XEUSU_CODIGO", length = 20, nullable = false)
    private String codigo;
    
    @Column(name = "PEPER_CODIGO", length = 10)
    private String codigoPersona;
    
    @Column(name = "XEEST_CODIGO", length = 1, nullable = false)
    private String codigoEstado;
    
    @Column(name = "XEUSU_PASWD", length = 255, nullable = false)
    private String contrasenaAlmacenada;
    
    @Column(name = "XEUSU_INTFAL", nullable = false)
    private int intentosFallidos;
    
    public Usuario() {
    }
    
    public Usuario(String codigo, String codigoPersona, String codigoEstado, String contrasenaAlmacenada, int intentosFallidos) {
        this.codigo = codigo;
        this.codigoPersona = codigoPersona;
        this.codigoEstado = codigoEstado;
        this.contrasenaAlmacenada = contrasenaAlmacenada;
        this.intentosFallidos = intentosFallidos;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getCodigoPersona() {
        return codigoPersona;
    }

    public void setCodigoPersona(String codigoPersona) {
        this.codigoPersona = codigoPersona;
    }

    public String getCodigoEstado() {
        return codigoEstado;
    }

    public void setCodigoEstado(String codigoEstado) {
        this.codigoEstado = codigoEstado;
    }

    public String getContrasenaAlmacenada() {
        return contrasenaAlmacenada;
    }

    public void setContrasenaAlmacenada(String contrasenaAlmacenada) {
        this.contrasenaAlmacenada = contrasenaAlmacenada;
    }

    public int getIntentosFallidos() {
        return intentosFallidos;
    }

    public void setIntentosFallidos(int intentosFallidos) {
        this.intentosFallidos = intentosFallidos;
    }
}