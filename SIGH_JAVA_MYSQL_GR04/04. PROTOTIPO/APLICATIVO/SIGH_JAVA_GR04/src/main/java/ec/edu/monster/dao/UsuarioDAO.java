package ec.edu.monster.dao;

import ec.edu.monster.model.Usuario;
import ec.edu.monster.util.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UsuarioDAO {

    public Usuario buscarPorCodigo(String codigo) throws SQLException {

        String sql = "SELECT XEUSU_CODIGO, "
                   + "PEPER_CODIGO, "
                   + "XEEST_CODIGO, "
                   + "XEUSU_PASWD, "
                   + "XEUSU_INTFAL "
                   + "FROM XEUSU_USUAR "
                   + "WHERE XEUSU_CODIGO = ?";

        try (Connection conexion = ConexionBD.obtenerConexion();
             PreparedStatement ps = conexion.prepareStatement(sql)) {

            ps.setString(1, codigo);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {

                    return new Usuario(
                        rs.getString("XEUSU_CODIGO"),
                        rs.getString("PEPER_CODIGO"),
                        rs.getString("XEEST_CODIGO"),
                        rs.getString("XEUSU_PASWD"),
                        rs.getInt("XEUSU_INTFAL")
                    );
                }
            }
        }

        return null;
    }
}