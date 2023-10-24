package Practica01.Grupo2.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;
@Data
@Entity
@Table(name="arbol")
public class Arbol implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_categoria")
    private Long idCategoria;
    private String nombre;
    private String descripcion;
    private int edad;
    private int altura;
    private String ruta_imagen;
    private boolean activo;
    public Arbol() {
    }
    public Arbol(String categoria, boolean activo) {
        this.descripcion = categoria;
        this.activo = activo;
    }
}
