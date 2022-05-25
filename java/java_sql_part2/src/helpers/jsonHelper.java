package helpers;

public class jsonHelper {
	public static String toJsonArray(String ArrayLabel, String content) {
		//Removes last comma
		String lastCharacter = content
				.substring(content.length() - 1);
		if (lastCharacter == ",") {
			content = content
				.substring(0, content.lastIndexOf(","));
		}
		
		String pattern = "\"%s\": [ %s ]";
		String returnString = String.format(
				pattern, 
				ArrayLabel, 
				content);

		return returnString;
	}
}
