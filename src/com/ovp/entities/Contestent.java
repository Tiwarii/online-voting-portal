/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.entities;

import java.util.List;
import java.util.Objects;

/**
 *
 * @author Rashmi Tiwari
 */
public class Contestent {

    private Integer id = null;
    private String name;
    private String picLocation;
    private List<String> agendaList;
    private int votes = 0;
    private int campaignId;

    public Contestent(String name, String picLocation, List<String> agendaList, int campaignId) {
        this.name = name;
        this.picLocation = picLocation;
        this.agendaList = agendaList;
        this.campaignId = campaignId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void increment() {
        votes++;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicLocation() {
        return picLocation;
    }

    public void setPicLocation(String picLocation) {
        this.picLocation = picLocation;
    }

    public List<String> getAgendaList() {
        return agendaList;
    }

    public void setAgendaList(List<String> agendaList) {
        this.agendaList = agendaList;
    }

    public int getVotes() {
        return votes;
    }

    public void setVotes(int votes) {
        this.votes = votes;
    }

    public int getCampaignId() {
        return campaignId;
    }

    public void setCampaignId(int campaignId) {
        this.campaignId = campaignId;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 79 * hash + Objects.hashCode(this.id);
        hash = 79 * hash + Objects.hashCode(this.name);
        hash = 79 * hash + Objects.hashCode(this.picLocation);
        hash = 79 * hash + Objects.hashCode(this.agendaList);
        hash = 79 * hash + this.votes;
        hash = 79 * hash + this.campaignId;
        return hash;
    }

   

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Contestent other = (Contestent) obj;
        if (this.votes != other.votes) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.picLocation, other.picLocation)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.agendaList, other.agendaList)) {
            return false;
        }
        if (this.campaignId != other.campaignId) {
            return false;
        }
        return true;
    }

    

    @Override
    public String toString() {
        return "Contestent{" + "id=" + id + 
                ", name=" + name + 
                ", picLocation=" + picLocation + 
                ", agendaList=" + agendaList + 
                ", votes=" + votes + 
                ", campaignId=" + campaignId + '}';
    }

    
}
