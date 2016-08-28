/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;

import com.ovp.entities.Candidate;
import com.ovp.entities.Party;
import com.ovp.entities.Voter;
import com.ovp.utils.RandomUtils;
import com.ovp.utils.Security;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.sql.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rashmi Tiwari
 */
public class VoterDao {
    private final static Logger log = Logger.getLogger("VoterDao");
     DateFormat dateFormater = new SimpleDateFormat("dd/MM/yyyy");
    public void RegisterVoter(Voter voter)throws SQLException{
        Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Registering voter:{0} in DB", voter);
        String insertQuery = "INSERT INTO voter(FIRSTNAME, LASTNAME,"
                + " DistrictArea, BirthDate, CITIZENSHIP, VoterId, Email, VOTED) VALUES(?,?,?,?,?,?,?,?)";
        try {
            connection = ConnectionFactory.getConnection();
            stmt = connection.prepareStatement(insertQuery, PreparedStatement.RETURN_GENERATED_KEYS);

            stmt.setString(1, voter.getFirstName());
            stmt.setString(2, voter.getLastName());
            stmt.setString(3, voter.getDistrictArea());
            stmt.setDate(4,voter.getDateOfBirth());
            stmt.setString(5, String.valueOf(voter.getCitizenshipNum()));
            stmt.setString(6, voter.getVoterId());
            stmt.setString(7, voter.getEmail());
            stmt.setBoolean(8, voter.hasVoted());

            int affectedRows = stmt.executeUpdate();

            if (affectedRows == 0) {
                log.log(Level.SEVERE, "Creating voter failed:{0} in DB", voter);
                throw new SQLException("Creating voter failed, no rows affected.");
            }
            // get primary key of the inserted row
            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    voter.setId(Integer.valueOf(generatedKeys.getString(1)));
                    log.log(Level.INFO, "voter created:{0} in DB", voter);
                } else {
                    log.log(Level.SEVERE, "Creating voter failed:{0} in DB", voter);
                    throw new SQLException("Creating voter failed, no ID obtained.");
                }
            }
        } catch(SQLException ex){
            log.log(Level.SEVERE, "Creating voter:{0} failed in DB", ex);
            throw ex;
        }
        finally {
            DBUtil.close(resultSet);
            DBUtil.close(stmt);
            DBUtil.close(connection);
        }
    }
    
    public void updateVoter(Voter voter)throws SQLException{
        Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Updating voter:{0} in DB", voter);
        String updateQuery = "UPDATE voter set voted = ?"
                + " Where id = ?";
        try {
            connection = ConnectionFactory.getConnection();
            stmt = connection.prepareStatement(updateQuery);

            stmt.setBoolean(1, voter.hasVoted());
            stmt.setInt(2, voter.getId());
            
            int affectedRows = stmt.executeUpdate();

            if (affectedRows == 0) {
                log.log(Level.SEVERE, "Updating voter failed:{0} in DB", voter);
                throw new SQLException("Uodating voter failed, no rows affected.");
            }
            
        } catch(SQLException ex){
            log.log(Level.SEVERE, "Updating voter:{0} failed in DB", ex);
            throw ex;
        }
        finally {
            DBUtil.close(resultSet);
            DBUtil.close(stmt);
            DBUtil.close(connection);
        }
    }
    
    public Voter getVoter(int voterId, String citizenship) throws SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Getting voter with VoterId:{0} from DB", voterId);
        String query = String.format("SELECT * FROM voter WHERE VoterId=%s and citizenship=%s", voterId, citizenship);
        try {
            connection = ConnectionFactory.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            List<Voter> lists = resultSetToVoterList(resultSet);
            if (lists.isEmpty()) {
                return null;
            } else {
                return lists.get(0);
            }
        }
        catch(SQLException ex){
            log.log(Level.SEVERE, "getting  voter:{0} failed in DB", ex);
            throw ex;
        }finally {
            DBUtil.close(resultSet);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
    }
    public String setPin(int id) throws SQLException, Exception {
        Connection connection = null;
        PreparedStatement statement = null;
        String updateQuery = "update voter set pin=? where VoterId=?";
        try {
            int randomNumber = RandomUtils.getRandomNumber();
            String rand = Security.encrypt(""+randomNumber+"");
            connection = ConnectionFactory.getConnection();
            statement = connection.prepareStatement(updateQuery);
            statement.setString(1, rand);
            statement.setInt(2, id);
            statement.execute();
            return rand;
        } catch(SQLException ex){
            log.log(Level.SEVERE, "setting  pin :{0} failed in DB", ex);
            throw ex;
        }finally {
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
    }
    
    private List<Voter> resultSetToVoterList(ResultSet resultSet) throws SQLException {
        List<Voter> voterList = new ArrayList();
        // ResultSet is initially before the first data set
        while (resultSet.next()) {
            int id = resultSet.getInt("id");
            String firstName = resultSet.getString("firstName");
            String lastName = resultSet.getString("LASTNAME");
            String districtArea = resultSet.getString("DistrictArea");
            Date bdate = resultSet.getDate("BirthDate");
            String citizenship = resultSet.getString("CITIZENSHIP");
            String voterId = resultSet.getString("VoterId");
            String email = resultSet.getString("Email");
            String pin = resultSet.getString("pin");
            boolean voted = resultSet.getBoolean("voted");

            Voter voter = new Voter();
            voter.setId(id);
            voter.setFirstName(firstName);
            voter.setLastName(lastName);
            voter.setDistrictArea(districtArea);
            voter.setCitizenshipNum(citizenship);
            voter.setEmail(email);
            voter.setDateOfBirth(bdate);
            voter.setVoterId(voterId);
            voter.setVoted(voted);
            voter.setPin(pin);
            voterList.add(voter);
        }
        return voterList;
    } 
    
    
    public List<Voter> getVotedVoter() throws SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Getting voter with VoterId:{0} from DB");
        String query = "SELECT * FROM voter WHERE Voted=1 ";
        try {
            connection = ConnectionFactory.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            List<Voter> lists = resultSetToVoterList(resultSet);
           return lists;
        }
        catch(SQLException ex){
            log.log(Level.SEVERE, "getting  voter:{0} failed in DB", ex);
            throw ex;
        }finally {
            DBUtil.close(resultSet);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
        
    } 
    public int getVotedVoterCount() throws SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Getting voter with VoterId:{0} from DB");
        String query = "SELECT count(*) as total FROM voter WHERE Voted=1 ";
        try {
            connection = ConnectionFactory.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
           // List<Voter> lists = resultSetToVoterList(resultSet);
            if (resultSet.next()){
             return resultSet.getInt("total");
            }
        }
        catch(SQLException ex){
            log.log(Level.SEVERE, "getting  voter:{0} failed in DB", ex);
            throw ex;
        }finally {
            DBUtil.close(resultSet);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
        return 0;
     }  
     
   public int getVoterCount() throws SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Getting voter with VoterId:{0} from DB");
        String query = "SELECT count(*) as total FROM voter  ";
        try {
            connection = ConnectionFactory.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
           // List<Voter> lists = resultSetToVoterList(resultSet);
            if (resultSet.next()){
             return resultSet.getInt("total");
            }
             return 0;
        }
        catch(SQLException ex){
            log.log(Level.SEVERE, "getting  voter:{0} failed in DB", ex);
            throw ex;
        }finally {
            DBUtil.close(resultSet);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
     }    
}
