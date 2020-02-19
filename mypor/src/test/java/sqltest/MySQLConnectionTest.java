/*
 * package sqltest;
 * 
 * import java.sql.DriverManager;
 * 
 * import org.junit.Test;
 * 
 * import com.mysql.jdbc.Connection;
 * 
 * public class MySQLConnectionTest { private static final String DRIVER =
 * "com.mysql.jdbc.Driver"; private static final String URL =
 * "jdbc:mysql://localhost:3307/kim?characterEncoding=UTF-8&serverTimezone=UTC";
 * private static final String USER = "scott"; private static final String
 * PASSWORD = "1234";
 * 
 * @Test public void testConnection() throws Exception{ Class.forName(DRIVER);
 * try(Connection connection = (Connection) DriverManager.getConnection(URL,
 * USER, PASSWORD)) { System.out.println(connection); } catch (Exception e) {
 * e.printStackTrace(); } } }
 */
