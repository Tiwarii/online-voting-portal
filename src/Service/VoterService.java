/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Classes.RandomNumber;
import Classes.e;
import Domain.Voter.VotedVoter;
import Domain.Voter.Voter;
import com.sun.faces.el.ELUtils;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import utils.Database_connection;

 
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import static java.lang.System.out;

import java.util.*;
import javax.servlet.jsp.PageContext;
import javax.xml.ws.Response;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sweychya
 */
public class VoterService {
    
    
      public void addVoter(String email){
       String query="INSERT INTO tblvoter(name,email,district,voter_id,citizenship,pin) SELECT name,email,district,voter_id,citizenship,pin FROM reg1 where email=?";
      
       try{ 
           PreparedStatement ps=new Database_connection().getPreparedStatement(query);
           ps.execute(email);
      ps.execute();
          }
       catch(SQLException e){
           e.printStackTrace();
       }
      }

    
    
    
    public Voter getVoter(String voter_id,String citizenship){
       String query="select id,name,email,district,voter_id,citizenship from tblvoter where voter_id=? and citizenship=? ";
       Voter voter=null;
       try{ 
           PreparedStatement ps=new Database_connection().getPreparedStatement(query);
       ps.setString(1,voter_id);
       ps.setString(2,citizenship);
     

           ResultSet rs=ps.executeQuery();
           while(rs.next()){
          voter =new Voter();
           voter.setId(rs.getInt("id"));
           voter.setName(rs.getString("name"));
          
            voter.setEmail(rs.getString("email"));
        
                      voter.setDistrict(rs.getString("district"));

           voter.setVoter_id(rs.getString("voter_id"));
           voter.setCitizenship(rs.getString("citizenship"));
         voter.setPin(rs.getString("pin"));
         break;
           }
       
    }
       catch(SQLException e){
           e.printStackTrace();
       }
       return voter;
    }
    
    
    public Voter getSecondPin(int id){
          String query="select* from tblvoter where id=?";
       Voter voter=null;
       try{ 
           PreparedStatement ps=new Database_connection().getPreparedStatement(query);
       ps.setInt(1,id);
    ResultSet rs=ps.executeQuery();
           while(rs.next()){
          voter =new Voter();
           voter.setId(rs.getInt("id"));
           voter.setName(rs.getString("name"));
           //voter.setRelationName(rs.getString("relationName"));
            voter.setEmail(rs.getString("email"));
        //   voter.setPassword(rs.getString("password"));
                      voter.setDistrict(rs.getString("district"));

           voter.setVoter_id(rs.getString("voter_id"));
           voter.setCitizenship(rs.getString("citizenship"));
         voter.setPin(rs.getString("pin"));
           voter.setSecondPin(rs.getString("secondPin"));
          
    }
       }
           catch(Exception e){
       e.printStackTrace();
                   }
    return voter;
}
     public Voter CheckSecondPin(int id,String secondPin){
           String query="select* from tblvoter where id=? and secondPin=? ";
       Voter voter=null;
       try{ 
           PreparedStatement ps=new Database_connection().getPreparedStatement(query);
       ps.setInt(1,id);
       ps.setString(2, secondPin);
    ResultSet rs=ps.executeQuery();
           while(rs.next()){
          voter =new Voter();
           voter.setId(rs.getInt("id"));
           voter.setName(rs.getString("name"));
        //   voter.setRelationName(rs.getString("relationName"));
            voter.setEmail(rs.getString("email"));
          // voter.setPassword(rs.getString("password"));
                      voter.setDistrict(rs.getString("district"));

           voter.setVoter_id(rs.getString("voter_id"));
           voter.setCitizenship(rs.getString("citizenship"));
         voter.setPin(rs.getString("pin"));
           voter.setSecondPin(rs.getString("secondPin"));
          
    }
       }
           catch(Exception e){
       e.printStackTrace();
                   }
    return voter;
}
        public void setSecondPin(int id){
            String query="update tblvoter set secondPin=? where id=?";
     try{
RandomNumber rN=new RandomNumber();
         
           int randomNumber= rN.getNumber();
           String rand=e.encrypt(Integer.toString(randomNumber));
         PreparedStatement ps=new Database_connection().getPreparedStatement(query);
               ps.setString(1,rand);
               ps.setInt(2,id);
              ps.execute();
        
        }
            catch(Exception e){
                e.printStackTrace();
                
            }
        }
        public Voter seepin(int id){
             String query="select secondPin from tblvoter where id=?";
           Voter voter=null;
        
           try{
              
            PreparedStatement ps=new Database_connection().getPreparedStatement(query);
               ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
        while(rs.next()){
             voter =new Voter();
           voter.setSecondPin(rs.getString("secondPin"));
        
        }
      }
           catch(Exception e){
           e.printStackTrace();
           }
        return voter;
        }
        public void setVotedVoter(int id){
        String query="insert into votedvoter(V_Id) values(?)";
       try{ PreparedStatement ps=new Database_connection().getPreparedStatement(query);
               ps.setInt(1,id);
            ps.execute();
        
        }
       catch(Exception e){
           e.printStackTrace();
       }}
        
        
        public int checkVotedVoter(int id){
        String query="select* from  VotedVoter where V_Id=?";
       try{ PreparedStatement ps=new Database_connection().getPreparedStatement(query);
               ps.setInt(1,id);
            ResultSet rs=ps.executeQuery();
         if(!rs.next()){
         return 1;
         }
         else{
         
         return 0;}
               
       }
       catch(Exception e){
           e.printStackTrace();
       }
return 0;
        } 
        
        
        
        public List<VotedVoter> DisplayVotedVoter(){
            
            List<VotedVoter> VotedList=new ArrayList<VotedVoter>();
        String query="SELECT tblvoter.voter_id,votedvoter.Time FROM votedvoter INNER JOIN tblvoter ON votedvoter.V_id=tblvoter.id  ";
       try{ 
           PreparedStatement ps=new Database_connection().getPreparedStatement(query);
            ResultSet rs=ps.executeQuery();
          while(rs.next()){
              

             VotedVoter  vv=new VotedVoter();
             
          vv.setVoted_id(rs.getString("voter_id"));
          vv.setTime(rs.getString("Time"));
VotedList.add(vv);
            
            }
       
       }
       catch(Exception e){
           e.printStackTrace();
       }
return VotedList;
        } 
}
        


