package java_sql_part2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import objectLists.actors;
import objectLists.addresses;

public class main_class {
	public static void main(String[] args) throws SQLException {
		Connection conn = DbConnect();
		
		actors myActors = new actors(conn);
		addresses myAddresses = new addresses(conn);

		String jsonDoc = "{" + myActors.toJson() + ", " + myAddresses.toJson() + "}";
		System.out.println(jsonDoc);

		conn.close();
	}
	
	private static Connection DbConnect() {
		String constr = "jdbc:mysql://localhost:3306/movies";
		
		Connection conn = null;
		
		try {
			conn = DriverManager.getConnection(constr, "root", "abc123");
		} catch (SQLException e) {
			System.out.println("databas kan ej anslutas");
			e.printStackTrace();
		}

		return conn;
	}

}
