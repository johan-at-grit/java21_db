package java_sql_part2;

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
		
		actors myActors = new actors(conn);
		addresses myAddresses = new addresses(conn);

//		String jsonDoc = "{" + myActors.toJson() + ", " + myAddresses.toJson() + "}";
//		String jsonDoc = jsonHelper.toJsonDocument(
//				myActors.toJson() + ", " + 
//				myAddresses.toJson());
		
		ArrayList<String> document = new ArrayList<String>();
		document.add(myActors.toJson());
		document.add(myAddresses.toJson());

		String jsonDoc = jsonHelper.toJsonObjectFromStrings(document);

		System.out.println(jsonDoc);

		conn.close();
	}
	
}
