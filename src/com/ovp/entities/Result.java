/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ovp.entities;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author pjayswal
 */
public class Result {
    private String post;
    private List<Candidate> candidates = new ArrayList();

    public Result(String post, List<Candidate> candidates) {
        this.post = post;
        this.candidates = candidates;
    }

    public String getPost() {
        return post;
    }

    public List<Candidate> getCandidates() {
        return candidates;
    }
    
    
    
}
