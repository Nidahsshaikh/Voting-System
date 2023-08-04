<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
public class ConnectDatabase {
	public static void main(String[] args) {
		String url = "jdbc:mysql://localhost:3307/voting_system";
		String user = "root", password = "root123";	
		try {
			Connection con = DriverManager.getConnection(url, user, password);
			Statement stmt = con.createStatement();
			String sql = "insert into admin";
			ResultSet rSet = stmt.executeQuery(sql);
			while(rSet.next()) {
				
			}
			rSet.close();
			stmt.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

class AdminDashboard {
    private List<Candidate> candidates;
    private List<Voter> voters;
    private List<PollingResult> pollingResults;
    private Map<Integer, Integer> votingCount;

    public AdminDashboard() {
        candidates = new ArrayList<>();
        voters = new ArrayList<>();
        pollingResults = new ArrayList<>();
        votingCount = new HashMap<>();
    }

    // Candidate registration
    public void registerCandidate(Candidate candidate) {
        candidates.add(candidate);
    }

    // Delete candidate
    public void deleteCandidate(int candidateId) {
        // Remove the candidate from the list of candidates
       String sql="delete candidate";
    }

    // Delete voter
    public void deleteVoter(int voterId) {
        String sql="delete voter";
    }

    // Record polling result
    public void recordPollingResult(PollingResult result) {
        pollingResults.add(result);
    }

    // Update voting count
    public void updateVotingCount(int candidateId, boolean votedSuccessfully) {
        int count = votingCount.getOrDefault(candidateId, 0);
        count += votedSuccessfully ? 1 : 0;
        votingCount.put(candidateId, count);
    }

    // Get the voting count for a candidate
    public int getVotingCount(int candidateId) {
        return votingCount.getOrDefault(candidateId, 0);
    }

    // Method to generate graphical representation of voting count 
    public void generateGraphicalRepresentation() {
        
    }
}
}