package ec.edu.monster.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "PEDEP_DEPAR")
public class Departamento implements Serializable {

    @Id
    @Column(name = "PEDEP_CODIGO", length = 3, nullable = false)
    private String codigo;      
    
    @Column(name = "PEDEP_DESCRI", length = 50, nullable = false)
    private String descripcion;  

    public Departamento() {
    }

    public Departamento(String codigo, String descripcion) {
        this.codigo = codigo;
        this.descripcion = descripcion;
    }

    public String getCodigo() { return codigo; }
    public void setCodigo(String codigo) { this.codigo = codigo; }

    public String getDescripcion() { return descripcion; }
    public void setDescripcion(String descripcion) { this.descripcion = descripcion; }
}