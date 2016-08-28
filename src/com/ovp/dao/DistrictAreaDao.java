/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rashmi Tiwari
 */
public class DistrictAreaDao {
    private final static Logger log = Logger.getLogger("DistrictAreaDao");
    
    public void InsertDistrictArea( String distrctArea, String desc)throws SQLException{
        
        Connection connection = null;
        PreparedStatement stmt = null;
        ResultSet resultSet = null;
        log.log(Level.INFO, "Creating district area:{0} in DB", distrctArea);
        String insertQuery = "INSERT INTO DistrictArea VALUES(?,?)";
        try {
            connection = ConnectionFactory.getConnection();
            stmt = connection.prepareStatement(insertQuery, PreparedStatement.RETURN_GENERATED_KEYS);

            stmt.setString(1, distrctArea);
            stmt.setString(2, desc);
;

            int affectedRows = stmt.executeUpdate();

            if (affectedRows == 0) {
                   log.log(Level.SEVERE, "Creating distrctArea:{0} failed in DB", distrctArea);
                throw new SQLException("Creating distrctArea failed, no rows affected.");
            }
            // get primary key of the inserted row
            
        } catch(SQLException ex){
            log.log(Level.SEVERE, "Creating distrctArea:{0} failed in DB", ex);
            throw ex;
        }
        finally {
            DBUtil.close(resultSet);
            DBUtil.close(stmt);
            DBUtil.close(connection);
        }
    }
    
    public List<String> getAllDistrictArea() throws SQLException {
        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
       
        String query = "SELECT * FROM districtArea";
        try {
            connection = ConnectionFactory.getConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(query);
            return resultSetToDistrictAreaList(resultSet);
        }catch(SQLException ex){
            log.log(Level.SEVERE, "Creating distrctArea:{0} failed in DB", ex);
            throw ex;
        } 
        finally {
            DBUtil.close(resultSet);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
    }
    
    private List<String> resultSetToDistrictAreaList(ResultSet resultSet) throws SQLException {
        List<String> postList = new ArrayList();
        // ResultSet is initially before the first data set
        while (resultSet.next()) {
            String post = resultSet.getString("districtArea");
            postList.add(post);
        }
        return postList;
    }
}
