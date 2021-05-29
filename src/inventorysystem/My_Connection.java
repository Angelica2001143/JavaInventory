package inventorysystem;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class My_Connection {

    private static String servername = "localhost";
    private static String username = "root";
    private static String dbname = "inventory_project";
    private static String password = "";
    private static Integer portnumber = 3306;

    public static Connection getConnection() {
        Connection connection = null;

        MysqlDataSource datasource = new MysqlDataSource();
        datasource.setServerName(servername);
        datasource.setUser(username);
        datasource.setPassword(password);
        datasource.setDatabaseName(dbname);
        datasource.setPortNumber(portnumber);

        try {
            connection = datasource.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(" Get connection ->" + My_Connection.class.getName()).log(Level.SEVERE, null, ex);
        }

        return connection;
    }

}
