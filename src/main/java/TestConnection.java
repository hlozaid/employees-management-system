import java.sql.Connection;
import java.sql.SQLException;

import dbutil.DBConnection;

public class TestConnection {
    public static void main(String[] args) throws SQLException {
        Connection conn = DBConnection.getConnection();
		if (conn != null) {
		    System.out.println("Connection successful!");
		}
    }
}
