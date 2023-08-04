<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
import java.util.ArrayList;
import java.util.List;

class Voter {
    private int voterId;
    private String voterName;

    public Voter(int voterId, String voterName) {
        this.voterId = voterId;
        this.voterName = voterName;
    }

   
}

class AdminDashboard {
    private List<Voter> voters;

    public AdminDashboard() {
        voters = new ArrayList<>();
    }

    // Voter registration
    public void registerVoter(Voter voter) {
        voters.add(voter);
    }

    // Delete voter
    public void deleteVoter(int voterId) {
        for (Voter voter : voters) {
            if (voter.getVoterId() == voterId) {
                voters.remove(voter);
                break;
            }
        }
    }

    // Get all registered voters
    public List<Voter> getAllVoters() {
        return voters;
    }
}

public class Main {
    public static void main(String[] args) {
        // Sample usage
        AdminDashboard adminDashboard = new AdminDashboard();

        // Registering a new voter
        Voter voter1 = new Voter(1, "VoterName1");
        adminDashboard.registerVoter(voter1);

        Voter voter2 = new Voter(2, "VoterName2");
        adminDashboard.registerVoter(voter2);

        // Deleting a voter
        int voterIdToDelete = 2;
        adminDashboard.deleteVoter(voterIdToDelete);

        // Getting all registered voters after deletion
        List<Voter> registeredVoters = adminDashboard.getAllVoters();
        for (Voter voter : registeredVoters) {
           
        }
    }
}