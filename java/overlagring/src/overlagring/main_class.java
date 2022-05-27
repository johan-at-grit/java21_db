package overlagring;

public class main_class {
	public static void main(String[] args) {
		hej("svejs");
		hejda("finn", "fiffi");
		hejda("Harald");
	}
	
	private static void hej(String valA) {
		System.out.println("Hej " + valA);
	}

	private static void hejda(String valA) {
		hejda(valA, "Hjördis");
	}

	private static void hejda(String valA, String valB) {
		System.out.println("Hej då " + valA);
		System.out.println("Hej då " + valB);
	}

}
