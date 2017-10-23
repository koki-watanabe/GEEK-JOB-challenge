package org.mypackage.sample;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.util.Date;
/**
 *
 * @author watanabetakashinozomi
 */


public class ResultData implements Serializable{
    private Date d;
    private String luck;
    
    
    public ResultData() {}
    
    /**
     * @retune d
     */
    
    public Date getD(){
        return d;
    }
    
    
    /**
     * @param d the d to set
     */
    
    public void setD(Date d){
        this.d = d;
     }
    
    /**
     * @reture luck
     */
    
    public String getLuck(){
        return luck;
    }
    
    /**
     * @param luck the luck to set
     */
    
    public void setLuck(String luck){
        this.luck = luck;
        
    }
}