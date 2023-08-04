<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
import java.util.ArrayList;
import java.util.List;

class pollResult {
    private int candidateSlNo;
    private String candidateName;
    private String partyName;
    private String partySymbol;
    private int count;

    public pollResult(int candidateSlNo, String candidateName, String partyName, String partySymbol, int count) {
        this.candidateSlNo = candidateSlNo;
        this.candidateName = candidateName;
        this.partyName = partyName;
        this.partySymbol = partySymbol;
        this.count = count;
    }


}

class adminDashboard {
    private List<PollingResult> pollingResults;

    public adminDashboard() {
        pollingResults = new ArrayList<>();
    }

    // Record polling result
    public void recordPollingResult(PollingResult result) {
        pollingResults.add(result);
    }

    // Get all polling results
    public List<PollingResult> getAllPollingResults() {
        return pollingResults;
    }
}

public class Main {
    public static void main(String[] args) {
        // Sample usage
        adminDashboard adminDashboard = new AdminDashboard();

        // Recording polling results
        

        // Getting all polling results
        List<PollingResult> allPollingResults = adminDashboard.getAllPollingResults();
        for (PollingResult result : allPollingResults) {
           
           
        }
    }
}