<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 import java.util.HashMap;
import java.util.Map;

class AdminDashboard {
    private Map<Integer, Integer> votingCount;
    private int totalVoters;

    public AdminDashboard() {
        votingCount = new HashMap<>();
        totalVoters = 0;
    }

    // Update voting count
    public void updateVotingCount(boolean votedSuccessfully) {
        totalVoters++;
        int count = votingCount.getOrDefault(votedSuccessfully ? 1 : 0, 0);
        count++;
        votingCount.put(votedSuccessfully ? 1 : 0, count);
    }

    // Get the voting count for voted successfully or not voted
    public int getVotingCount(boolean votedSuccessfully) {
        return votingCount.getOrDefault(votedSuccessfully ? 1 : 0, 0);
    }

    // Get the total number of voters
    public int getTotalVoters() {
        return totalVoters;
    }

    // Method to generate graphical representation of voting count (you can use any chart library)
    public void generateGraphicalRepresentation() {
        int votedSuccessfullyCount = getVotingCount(true);
        int notVotedCount = getVotingCount(false);

        // Implement the logic to generate the graphical representation of voting count
        
    }
}

public class Main {
    public static void main(String[] args) {
        // Sample usage
        AdminDashboard adminDashboard = new AdminDashboard();

        // Simulating voting
        adminDashboard.updateVotingCount(true); // Voted Successfully
        adminDashboard.updateVotingCount(false); // Not Voted
        adminDashboard.updateVotingCount(true); // Voted Successfully

        // Getting voting counts
        int votedSuccessfullyCount = adminDashboard.getVotingCount(true);
        int notVotedCount = adminDashboard.getVotingCount(false);
        int totalVoters = adminDashboard.getTotalVoters();

       // System.out.println("Total Voters: " + totalVoters);
       // System.out.println("Voted Successfully: " + votedSuccessfullyCount);
        //System.out.println("Not Voted: " + notVotedCount);

        // Generate graphical representation
        adminDashboard.generateGraphicalRepresentation();
    }
}