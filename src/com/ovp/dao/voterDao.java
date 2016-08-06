/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;

import com.ovp.entities.Candidate;
import com.ovp.entities.Party;
import com.ovp.entities.Voter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rashmi Tiwari
 */
public class voterDao {
    private final static Logger log = Logger.getLogger("VoterDao");
     DateFormat dateFormater = new SimpleDateFormat("dd/MM/yyyy");
    public void RegisterVoter(Voter voter)throws SQLException{
        Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Registering voter:{0} in DB", voter);
        String insertQuery = "INSERT INTO voter VALUES(?,?,?,?,?,?,?,?)";
        try {
            connection = ConnectionFactory.getConnection();
            stmt = connection.prepareStatement(insertQuery, PreparedStatement.RETURN_GENERATED_KEYS);

            stmt.setInt(1, voter.getId());
            stmt.setString(2, voter.getFirstName());
            stmt.setString(3, voter.getLastName());
            stmt.setString(4, voter.getDistrict());
            Date date = voter.getDateOfBirth();
            
            String strDate = dateFormater.format(date);
            stmt.setString(5,strDate);
         
            stmt.setString(6, String.valueOf(voter.getCitizenshipNum()));
            stmt.setString(7, voter.getVoterId());
            stmt.setString(8, voter.getEmail());

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
    
    public Voter getVoter(int voterId) throws SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Getting voter with VoterId:{0} from DB", voterId);
        String query = "SELECT * FROM voter WHERE VoterId=" + voterId;
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
            log.log(Level.SEVERE, "getting  contestent:{0} failed in DB", ex);
            throw ex;
        }finally {
            DBUtil.close(resultSet);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
    }
    
    private List<Voter> resultSetToVoterList(ResultSet resultSet) throws SQLException {
        List<Voter> voterList = new ArrayList();
        // ResultSet is initially before the first data set
        while (resultSet.next()) {
            String voter = resultSet.getString("voter");
           // voterList.add(voter);
        }
        return voterList;
    } 
    
    
}
