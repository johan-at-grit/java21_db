package java_sql_part2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import helpers.databaseHelper;
import objectLists.actors;
import objectLists.addresses;

public class main_class {
	public static void main(String[] args) throws SQLException {
		Connection conn = databaseHelper.DbConnect("movies");
		
		actors myActors = new actors(conn);
		addresses myAddresses = new addresses(conn);

		String jsonDoc = "{" + myActors.toJson() + ", " + myAddresses.toJson() + "}";
		System.out.println(jsonDoc);

		conn.close();
	}
	
}
