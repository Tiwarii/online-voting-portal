/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.dao;

import com.ovp.entities.Campaign;
import com.ovp.entities.Contestent;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Rashmi Tiwari
 */
public class TestWithMain {
    
  public static void main(String[] args) throws Exception {
    CampaignDao campaignDao = new CampaignDao();
    ContestentDao contestentDao = new ContestentDao();
    // Create a Campaign
    Campaign campaign = new Campaign("ACEM Student Election", new Date(2016, 05, 01), new Date(2016, 05, 01));
    // Save the Campaign
    campaignDao.createCampaign(campaign);
    
    // load the campaign from database
    campaign = campaignDao.getCampaign(campaign.getId());
    
    // Create some contestents 
    List<String> agendas = new ArrayList();
    agendas.add("I am awesome.");
    agendas.add("You are awesome.");
    agendas.add("We both are awesome.");
    agendas.add("That means we have good future!!.");
    
    // create a contestent
    Contestent c = new Contestent("rashmi","/usr/share/pics/001.jpg", agendas, campaign.getId());
    agendas.add("Lets have fun together!!");
    Contestent c2 = new Contestent("tiwari","/usr/share/pics/002.jpg", agendas, campaign.getId());
    
    // save these contestents
    contestentDao.createContestent(c);
    contestentDao.createContestent(c2);
    
     // load the campaign from database
    campaign = campaignDao.getCampaign(campaign.getId());
  }

}
