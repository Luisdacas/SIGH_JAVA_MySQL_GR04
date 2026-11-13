package ec.edu.monster.dao;

import ec.edu.monster.model.Cargo;
import ec.edu.monster.util.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CargoDAO {

    private Connection obtenerConexion() throws SQLException {
        return ConexionBD.obtenerConexion();
    }

    /** Lista los cargos junto con la descripción de su departamento. */
    public List<Cargo> listar() throws SQLException {
        String sql = "SELECT c.PECAR_CODIGO, c.PECAR_DESCRI, c.PEDEP_CODIGO, d.PEDEP_DESCRI "
                   + "FROM PECAR_CARGO c "
                   + "INNER JOIN PEDEP_DEPAR d ON d.PEDEP_CODIGO = c.PEDEP_CODIGO "
                   + "ORDER BY c.PECAR_CODIGO";
        List<Cargo> lista = new ArrayList<>();
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                lista.add(new Cargo(rs.getString("PECAR_CODIGO"),
                                    rs.getString("PECAR_DESCRI"),
                                    rs.getString("PEDEP_CODIGO"),
                                    rs.getString("PEDEP_DESCRI")));
            }
        }
        return lista;
    }

    public boolean existe(String codigo) throws SQLException {
        String sql = "SELECT 1 FROM PECAR_CARGO WHERE PECAR_CODIGO = ?";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, codigo != null ? codigo.trim() : "");
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        }
    }

    public void insertar(Cargo c) throws SQLException {
        String sql = "INSERT INTO PECAR_CARGO (PECAR_CODIGO, PEDEP_CODIGO, PECAR_DESCRI) VALUES (?, ?, ?)";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, c.getCodigo());
            ps.setString(2, c.getDepartamentoCodigo());
            ps.setString(3, c.getDescripcion());
            ps.executeUpdate();
        }
    }

    /** Modifica descripción y departamento. El código no cambia. */
    public int actualizar(Cargo c) throws SQLException {
        String sql = "UPDATE PECAR_CARGO SET PEDEP_CODIGO = ?, PECAR_DESCRI = ? WHERE PECAR_CODIGO = ?";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, c.getDepartamentoCodigo());
            ps.setString(2, c.getDescripcion());
            ps.setString(3, c.getCodigo().trim());
            return ps.executeUpdate();
        }
    }

    public int eliminar(String codigo) throws SQLException {
        if (codigo == null || codigo.trim().isEmpty()) {
            return 0;
        }
        String sql = "DELETE FROM PECAR_CARGO WHERE PECAR_CODIGO = ?";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, codigo.trim());
            return ps.executeUpdate();
        }
    }
}