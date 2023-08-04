<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
import java.util.ArrayList;
import java.util.List;
class Candidate {
    private int candidateId;
    private String partyName;
    private String candidateName;

    public Candidate(int candidateId, String partyName, String candidateName) {
        this.candidateId = candidateId;
        this.partyName = partyName;
        this.candidateName = candidateName;
    }

    
}

class AdminDashboard {
    private List<Candidate> candidates;

    public AdminDashboard() {
        candidates = new ArrayList<>();
    }

    // Candidate registration
    public void registerCandidate(Candidate candidate) {
        candidates.add(candidate);
    }

    // Delete candidate
    public void deleteCandidate(int candidateId) {
        for (Candidate candidate : candidates) {
            if (candidate.getCandidateId() == candidateId) {
                candidates.remove(candidate);
                break;
            }
        }
    }

    // Get all registered candidates
    public List<Candidate> getAllCandidates() {
        return candidates;
    }
}

public class Main {
    public static void main(String[] args) {
        // Sample usage
        AdminDashboard adminDashboard = new AdminDashboard();

        // Registering a new candidate
     

        // Deleting a candidate
        

        // Getting all registered candidates after deletion
        List<Candidate> registeredCandidates = adminDashboard.getAllCandidates();
        for (Candidate candidate : registeredCandidates) {
            <%
           String username = request.getParameter("candidateId");
           String username = request.getParameter("partyName");
           String password = request.getParameter("candidateName");           
           %>                      
        }
    }
}