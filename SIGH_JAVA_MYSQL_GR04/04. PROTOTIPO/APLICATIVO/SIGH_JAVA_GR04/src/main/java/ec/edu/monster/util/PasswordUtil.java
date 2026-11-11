
package ec.edu.monster.util;

import java.security.MessageDigest;
import java.security.SecureRandom;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Base64;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public final class PasswordUtil {

    private static final int ITERACIONES = 600000;
    private static final int TAMANO_SAL = 16;
    private static final int TAMANO_HASH = 256;
    private static final String ALGORITMO = "PBKDF2WithHmacSHA256";

    private PasswordUtil() {
    }

    public static String generarHash(String contrasena) {
        if (contrasena == null || contrasena.isEmpty()) {
            throw new IllegalArgumentException("Contrasena vacia");
        }

        byte[] sal = new byte[TAMANO_SAL];
        new SecureRandom().nextBytes(sal);

        char[] caracteres = contrasena.toCharArray();

        try {
            byte[] hash = derivar(caracteres, sal, ITERACIONES);

            return "pbkdf2_sha256$" + ITERACIONES + "$"
                    + Base64.getEncoder().encodeToString(sal) + "$"
                    + Base64.getEncoder().encodeToString(hash);
        } finally {
            Arrays.fill(caracteres, '\0');
        }
    }

    public static boolean verificar(String contrasena, String almacenado) {
        if (contrasena == null || almacenado == null) {
            return false;
        }

        String[] partes = almacenado.split("\\$", -1);

        if (partes.length != 4
                || !"pbkdf2_sha256".equals(partes[0])) {
            return false;
        }

        try {
            int iteraciones = Integer.parseInt(partes[1]);

            if (iteraciones < 100000 || iteraciones > 2000000) {
                return false;
            }

            byte[] sal = Base64.getDecoder().decode(partes[2]);
            byte[] hashAlmacenado =
                    Base64.getDecoder().decode(partes[3]);

            if (sal.length != TAMANO_SAL
                    || hashAlmacenado.length != 32) {
                return false;
            }

            char[] caracteres = contrasena.toCharArray();

            try {
                byte[] hashCalculado =
                        derivar(caracteres, sal, iteraciones);

                return MessageDigest.isEqual(
                        hashCalculado, hashAlmacenado);
            } finally {
                Arrays.fill(caracteres, '\0');
            }

        } catch (IllegalArgumentException ex) {
            return false;
        }
    }

    private static byte[] derivar(char[] contrasena,
                                  byte[] sal,
                                  int iteraciones) {

        PBEKeySpec especificacion = new PBEKeySpec(
                contrasena, sal, iteraciones, TAMANO_HASH);

        try {
            SecretKeyFactory fabrica =
                    SecretKeyFactory.getInstance(ALGORITMO);

            return fabrica.generateSecret(
                    especificacion).getEncoded();

        } catch (GeneralSecurityException ex) {
            throw new IllegalStateException(
                    "No se pudo procesar la contrasena", ex);
        } finally {
            especificacion.clearPassword();
        }
    }
}
