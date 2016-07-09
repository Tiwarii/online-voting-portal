/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;

import com.ovp.entities.Party;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Rashmi Tiwari
 */
public class PartyDao {
    public void InsertParty(Party party)throws SQLException{
        try{
            Connection connection=ConnectionFactory.getConnection();
            String qry="insert into party values(?,?,?)";
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}
