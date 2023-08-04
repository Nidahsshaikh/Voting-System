<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
import java.util.ArrayList;
import java.util.List;

class candidateRegistration {
    private int candidateId;
    private String partySymbol;
    private String partyName;
    private String candidateName;
    private String candidatePhoto;
    private int candidateAge;

    public candidateRegistration(int candidateId, String partySymbol, String partyName, String candidateName, String candidatePhoto, int candidateAge) {
        this.candidateId = candidateId;
        this.partySymbol = partySymbol;
        this.partyName = partyName;
        this.candidateName = candidateName;
        this.candidatePhoto = candidatePhoto;
        this.candidateAge = candidateAge;
    }

    
}

class adminDashboard {
    private List<Candidate> candidates;

    public adminDashboard() {
        candidates = new ArrayList<>();
    }

    // Candidate registration
    public void registerCandidate(Candidate candidate) {
        candidates.add(candidate);
    }

    // Get all registered candidates
    public List<Candidate> getAllCandidates() {
        return candidates;
    }
}

public class Main {
    public static void main(String[] args) {
        // Sample usage
        adminDashboard adminDashboard = new adminDashboard();

        // Registering a new candidate
       

        // Getting all registered candidates
        List<Candidate> registeredCandidates = adminDashboard.getAllCandidates();
        for (Candidate candidate : registeredCandidates) {
           <%
           String username = request.getParameter("candidateId");
           String password = request.getParameter("partySymbol");
           String username = request.getParameter("partyName");
           String password = request.getParameter("candidateName");
           String username = request.getParameter("candidatePhoto");
           String password = request.getParameter("candidateAge");
           %>
        }
    }
}