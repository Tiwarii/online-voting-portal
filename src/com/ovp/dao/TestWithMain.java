/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;

import com.ovp.entities.Contestent;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Rashmi Tiwari
 */
public class TestWithMain {
    
  public static void main(String[] args) throws Exception {
    ContestentDao dao = new ContestentDao();
    // get all contestent
    dao.getAllContestent();
    // get one contestent
    dao.getContestent(5);
    
    List<String> agendas = new ArrayList();
    agendas.add("I am awesome.");
    agendas.add("You are awesome.");
    agendas.add("We both are awesome.");
    agendas.add("That means we have good future!!.");
    
    // create a contestent
    Contestent c = new Contestent("rashmi","/usr/share/pics/001.jpg", agendas);
    dao.createContestent(c);
    
    // update a contestent
    c.setPicLocation("/usr/share/pics/002.jpg");
    dao.updateContestent(c);
    
  }

}
