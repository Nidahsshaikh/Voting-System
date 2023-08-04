import static spark.Spark.*;
import java.util.HashMap;
import java.util.Map;

public class candidateDashboard {

    // Create a HashMap to store candidate profiles (You can replace this with a database in a real application)
    private static Map<String, String> candidateProfiles = new HashMap<>();

    public static void main(String[] args) {
        // Set the port for your server (default is 4567)
        port(4567);

        // Serve the static HTML and CSS files (place your HTML file in a folder called 'public')
        staticFiles.location("/public");

        // Define routes to handle HTTP requests
        get("/candidateProfile", (req, res) -> {
            String candidateId = req.queryParams("candidateId"); // Assuming you pass candidateId as a query parameter
            String profileData = candidateProfiles.getOrDefault(candidateId, "Candidate not found");
            return profileData;
        });

        // Endpoint to add candidate profiles (for demo purposes)
        post("/candidateProfile", (req, res) -> {
            String candidateId = req.queryParams("candidateId"); // Assuming you pass candidateId as a query parameter
            String profileData = req.queryParams("profileData"); // Assuming you pass profileData as a query parameter

            candidateProfiles.put(candidateId, profileData);
            return "Candidate Profile Added Successfully";
        });
    }
}


