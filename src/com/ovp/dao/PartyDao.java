/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;

import com.ovp.entities.Party;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Rashmi Tiwari
 */
public class PartyDao {
     private final static Logger log = Logger.getLogger("PartyDao");
    public void InsertParty(Party party)throws SQLException{
        Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Creating party:{0} in DB", party);
        String insertQuery = "INSERT INTO party VALUES(?,?,?,?,?)";
        try {
            connection = ConnectionFactory.getConnection();
            stmt = connection.prepareStatement(insertQuery, PreparedStatement.RETURN_GENERATED_KEYS);

            stmt.setInt(1, party.getId());
            stmt.setString(2, party.getName());
            Date date = party.getEstablishedDate();
            DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
            String strDate = dateFormat.format(date);
            stmt.setString(3,strDate);
         
            stmt.setString(4, String.valueOf(party.getNumberOfMembers()));
            stmt.setString(5, party.getDescription());
            
           // stmt.setString(5, "TODO: Add summary to Contestent Class");
           // stmt.setInt(6, contestent.getCampaignId());

            int affectedRows = stmt.executeUpdate();

            if (affectedRows == 0) {
                log.log(Level.SEVERE, "Creating user failed:{0} in DB", party);
                throw new SQLException("Creating user failed, no rows affected.");
            }
            // get primary key of the inserted row
            try (ResultSet generatedKeys = stmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    party.setId(Integer.valueOf(generatedKeys.getString(1)));
                    log.log(Level.INFO, "Contestent created:{0} in DB", party);
                } else {
                    log.log(Level.SEVERE, "Creating user failed:{0} in DB", party);
                    throw new SQLException("Creating user failed, no ID obtained.");
                }
            }
        } finally {
            DBUtil.close(resultSet);
            DBUtil.close(stmt);
            DBUtil.close(connection);
        }
    }
    
}
