/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 *
 * @author Rashmi Tiwari
 */
public class Campaign {
    private Integer id=null;
    private String title;
    private Date startDate;
    private Date endDate;
    private List<Contestent> contestentList= new ArrayList();

    public Campaign(String title, Date startDate, Date endDate) {
        this.title = title;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public void addContestent(Contestent contestent){
        contestentList.add(contestent);
        contestent.setCampaignId(this.id);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public List<Contestent> getContestentList() {
        return contestentList;
    }

    public void setContestentList(List<Contestent> contestentList) {
        this.contestentList = contestentList;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 89 * hash + Objects.hashCode(this.id);
        hash = 89 * hash + Objects.hashCode(this.title);
        hash = 89 * hash + Objects.hashCode(this.startDate);
        hash = 89 * hash + Objects.hashCode(this.endDate);
        hash = 89 * hash + Objects.hashCode(this.contestentList);
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
        final Campaign other = (Campaign) obj;
        if (!Objects.equals(this.title, other.title)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.startDate, other.startDate)) {
            return false;
        }
        if (!Objects.equals(this.endDate, other.endDate)) {
            return false;
        }
        if (!Objects.equals(this.contestentList, other.contestentList)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Campaign{" + "title=" + title + ", startDate=" + startDate + ", endDate=" + endDate + ", contestentList=" + contestentList + '}';
    }
}
