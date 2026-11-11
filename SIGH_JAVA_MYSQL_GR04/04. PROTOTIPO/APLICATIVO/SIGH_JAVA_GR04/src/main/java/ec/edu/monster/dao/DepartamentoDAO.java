package ec.edu.monster.dao;

import ec.edu.monster.model.Departamento;
import ec.edu.monster.util.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DepartamentoDAO {

    private Connection obtenerConexion() throws SQLException {
        return ConexionBD.obtenerConexion();
    }

    public List<Departamento> listar() throws SQLException {
        String sql = "SELECT PEDEP_CODIGO, PEDEP_DESCRI "
                   + "FROM PEDEP_DEPAR ORDER BY PEDEP_CODIGO";
        List<Departamento> lista = new ArrayList<>();
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                lista.add(new Departamento(rs.getString("PEDEP_CODIGO"),
                                           rs.getString("PEDEP_DESCRI")));
            }
        }
        return lista;
    }

    public boolean existe(String codigo) throws SQLException {
        String sql = "SELECT 1 FROM PEDEP_DEPAR WHERE PEDEP_CODIGO = ? OR TRIM(PEDEP_CODIGO) = ?";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, codigo);
            ps.setString(2, codigo != null ? codigo.trim() : "");
            try (ResultSet rs = ps.executeQuery()) {
                return rs.next();
            }
        }
    }

    public void insertar(Departamento d) throws SQLException {
        String sql = "INSERT INTO PEDEP_DEPAR (PEDEP_CODIGO, PEDEP_DESCRI) VALUES (?, ?)";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, d.getCodigo());
            ps.setString(2, d.getDescripcion());
            ps.executeUpdate();
        } 
    }

    /**
     * Modifica solamente la descripcion. Devuelve el numero de filas afectadas.
     */
    public int actualizar(Departamento d) throws SQLException {
        String sql = "UPDATE PEDEP_DEPAR SET PEDEP_DESCRI = ? WHERE PEDEP_CODIGO = ? OR TRIM(PEDEP_CODIGO) = ?";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, d.getDescripcion());
            ps.setString(2, d.getCodigo());
            ps.setString(3, d.getCodigo() != null ? d.getCodigo().trim() : "");
            return ps.executeUpdate();
        }
    }

    /**
     * Elimina SOLO el departamento solicitado.
     */
    public int eliminar(String codigo) throws SQLException {
        if (codigo == null || codigo.trim().isEmpty()) {
            return 0;
        }

        String sql = "DELETE FROM PEDEP_DEPAR WHERE PEDEP_CODIGO = ?";
        try (Connection cn = obtenerConexion();
             PreparedStatement ps = cn.prepareStatement(sql)) {
            ps.setString(1, codigo.trim());
            return ps.executeUpdate();
        }
    }
}