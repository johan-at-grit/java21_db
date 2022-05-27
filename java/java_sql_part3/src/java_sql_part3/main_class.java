package java_sql_part3;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import helpers.databaseHelper;
import helpers.jsonHelper;
import helpers.keyvaluepair;
import objectLists.actors;
import objectLists.addresses;

public class main_class {
	public static void main(String[] args) throws SQLException {
		Connection conn = databaseHelper.DbConnect("movies");
		
		ShowAllTables(conn);
		
		updateActors(conn, "mikaela");

		ShowAllTables(conn);

		conn.close();
	}
	
	private static void ShowAllTables(Connection conn) {
		actors myActors = new actors(conn);
		addresses myAddresses = new addresses(conn);

		ArrayList<String> document = new ArrayList<String>();
		document.add(myActors.toJson());
		document.add(myAddresses.toJson());

		String jsonDoc = jsonHelper.toJsonObjectFromStrings(document);

		System.out.println(jsonDoc);

	}
	
	private static void updateActors(Connection conn, String name) {
		actors myActors = new actors(conn);

		int antal = myActors.updateActors(name, "malmo_the_greatest", -1);
		System.out.println("uppdaterat : " + antal);
		
		antal = myActors.updateActorsCity("s%", "växjö");
		System.out.println("uppdaterat : " + antal);		
	}
}
