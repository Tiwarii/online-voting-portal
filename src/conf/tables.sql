/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Rashmi Tiwarii
 * Created: Jun 2, 2016
 */
CREATE TABLE campaign (id INT NOT NULL AUTO_INCREMENT, 
    TITLE VARCHAR(30) NOT NULL,
    STARTDATE DATE, 
    ENDDATE DATE NOT NULL, 
    PRIMARY KEY (ID));
    
CREATE TABLE contestent (
    id INT NOT NULL AUTO_INCREMENT, 
    NAME VARCHAR(30) NOT NULL, 
    AGENDA VARCHAR(1000) NOT NULL, 
    POST VARCHAR(50) NOT NULL,
    VOTE INT NOT NULL, 
    SUMMARY VARCHAR(40) NOT NULL,
    campaign_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (campaign_id) REFERENCES campaign(id));


use ovp;
CREATE TABLE party (
    id INT NOT NULL AUTO_INCREMENT, 
    NAME VARCHAR(30) NOT NULL,
    EstablishedDate VARCHAR(30),  
    NoOfMembers INT NOT NULL, 
    description VARCHAR(40) NOT NULL,
    PRIMARY KEY (ID)
    );

CREATE TABLE commisner (
    userId INT NOT NULL AUTO_INCREMENT, 
    userName VARCHAR(30) NOT NULL,
    password VARCHAR(1000), 
    PRIMARY KEY (userId));
    

