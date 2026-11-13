package ec.edu.monster.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import java.io.Serializable;

@Entity
@Table(name = "PECAR_CARGO")
public class Cargo implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "PECAR_CODIGO", length = 3, nullable = false)
    private String codigo;

    @Column(name = "PECAR_DESCRI", length = 50, nullable = false)
    private String descripcion;

    @Column(name = "PEDEP_CODIGO", length = 3, nullable = false)
    private String departamentoCodigo;

    // No es columna de PECAR_CARGO: viene del JOIN y solo sirve para mostrar en la tabla.
    @Transient
    private String departamentoDescripcion;

    public Cargo() {
    }

    public Cargo(String codigo, String descripcion,
                 String departamentoCodigo, String departamentoDescripcion) {
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.departamentoCodigo = departamentoCodigo;
        this.departamentoDescripcion = departamentoDescripcion;
    }

    public String getCodigo() { return codigo; }
    public void setCodigo(String codigo) { this.codigo = codigo; }

    public String getDescripcion() { return descripcion; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }

    public String getDepartamentoCodigo() { return departamentoCodigo; }
    public void setDepartamentoCodigo(String departamentoCodigo) { this.departamentoCodigo = departamentoCodigo; }

    public String getDepartamentoDescripcion() { return departamentoDescripcion; }
    public void setDepartamentoDescripcion(String departamentoDescripcion) { this.departamentoDescripcion = departamentoDescripcion; }
}