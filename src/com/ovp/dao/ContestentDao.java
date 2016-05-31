/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;

/**
 *
 * @author pjayswal
 */

import com.ovp.entities.Contestent;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ContestentDao {
  private Connection connection ;
  private Statement statement ;
  private PreparedStatement preparedStatement ;
  private ResultSet resultSet = null;


  public Contestent getContestent(int contestentId) throws SQLException{
        String query = "SELECT * FROM contestent WHERE id=" + contestentId;
        ResultSet rs = null;
        try {
            connection = ConnectionFactory.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            List<Contestent> lists =  resultSetToContestentList(resultSet);
            if(lists.size()==0){
                return null;
            }
            else {
                return lists.get(0);
            }
        } finally {
            DBUtil.close(rs);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
  }
  
  public List<Contestent> getAllContestent() throws SQLException{
        String query = "SELECT * FROM contestent";
        ResultSet rs = null;
        try {
            connection = ConnectionFactory.getConnection();
            statement = connection.createStatement();
            rs = statement.executeQuery(query);
            return resultSetToContestentList(resultSet);
        } finally {
            DBUtil.close(rs);
            DBUtil.close(statement);
            DBUtil.close(connection);
        }
  }
  /*
  public void readDataBase() throws Exception {
    try {
      // This will load the MySQL driver, each DB has its own driver
      Class.forName("com.mysql.jdbc.Driver");
      // Setup the connection with the DB
      connect = DriverManager
          .getConnection("jdbc:mysql://localhost/test?");
      
      /*connect = DriverManager
          .getConnection("jdbc:mysql://localhost/test?"
              + "user=sqluser&password=sqluserpw");*/
/*
      // Statements allow to issue SQL queries to the database
      statement = connect.createStatement();
      // Result set get the result of the SQL query
      resultSet = statement
          .executeQuery("select * from contestent");
      writeResultSet(resultSet);

      // PreparedStatements can use variables and are more efficient
      preparedStatement = connect
          .prepareStatement("insert into  contestent values (default, ?, ?, ?, ? , ?)");
      // "myuser, webpage, datum, summery, COMMENTS from feedback.comments");
      // Parameters start with 1
      preparedStatement.setString(1, "Test");
      preparedStatement.setString(2, "TestEmail");
      preparedStatement.setString(3, "TestWebpage");
      preparedStatement.setInt(4, 2);
      preparedStatement.setString(5, "TestComment");
      preparedStatement.executeUpdate();

      preparedStatement = connect
          .prepareStatement("SELECT name, picloc, agenda, vote, summary from contestent");
      resultSet = preparedStatement.executeQuery();
      writeResultSet(resultSet);

      // Remove again the insert comment
      preparedStatement = connect
      .prepareStatement("delete from contestent where name= ? ; ");
      preparedStatement.setString(1, "Test");
      preparedStatement.executeUpdate();
      
      resultSet = statement
      .executeQuery("select * from contestent");
      writeMetaData(resultSet);
      
    } catch (Exception e) {
      throw e;
    } finally {
      close();
    }

  }

  private void writeMetaData(ResultSet resultSet) throws SQLException {
    //   Now get some metadata from the database
    // Result set get the result of the SQL query
    
    System.out.println("The columns in the table are: ");
    
    System.out.println("Table: " + resultSet.getMetaData().getTableName(1));
    for  (int i = 1; i<= resultSet.getMetaData().getColumnCount(); i++){
      System.out.println("Column " +i  + " "+ resultSet.getMetaData().getColumnName(i));
    }
  }*/

  private List<Contestent> resultSetToContestentList(ResultSet resultSet) throws SQLException {
      List<Contestent> contestentList = new ArrayList();
    // ResultSet is initially before the first data set
    while (resultSet.next()) {
      String name = resultSet.getString("name");
      String picLoc = resultSet.getString("picloc");
      String[] agendaList = resultSet.getString("agenda").split(";");
      int vote = resultSet.getInt("vote");
      String summary = resultSet.getString("summary");
      System.out.println("Name: " + name);
      System.out.println("Picloc: " + picLoc);
      System.out.println("agenda: " + agendaList);
      System.out.println("Vote: " + vote);
      System.out.println("Summary: " + summary);
      // TODO: convert agentList array to real List and use it in constructor
      Contestent contestent = new Contestent(name, picLoc, new ArrayList());
      contestent.setVotes(vote);
      contestentList.add(contestent);      
    }
    return contestentList;
  }

} 
