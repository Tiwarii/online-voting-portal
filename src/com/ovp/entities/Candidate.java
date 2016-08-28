/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.entities;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 *
 * @author Rashmi Tiwari
 */
public class Candidate {
    private String id = null;
    private String name;
    private String districtArea;
    private String partyName;
    private String description;
    private List<String> agendaList;
    private int votes = 0;
    private int photoId;
    private int campaignId;
    public Party party;

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public String getDistrictArea() {
        return districtArea;
    }

    public void setDistrictArea(String districtArea) {
        this.districtArea = districtArea;
    }

    public String getPicLocation() {
        return partyName;
    }

    public void setPicLocation(String picLocation) {
        this.partyName = picLocation;
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

    public String getPartyName() {
        return partyName;
    }

    public void setPartyName(String party) {
        this.partyName = party;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPhotoId() {
        return photoId;
    }

    public void setPhotoId(int photoId) {
        this.photoId = photoId;
    }

    public Party getParty() {
        return party;
    }

    public void setParty(Party party) {
        this.party = party;
    }
    

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 79 * hash + Objects.hashCode(this.id);
        hash = 79 * hash + Objects.hashCode(this.name);
        hash = 79 * hash + Objects.hashCode(this.partyName);
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
        final Candidate other = (Candidate) obj;
        if (this.votes != other.votes) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.partyName, other.partyName)) {
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
    
}
