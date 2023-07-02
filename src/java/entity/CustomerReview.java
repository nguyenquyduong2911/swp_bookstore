/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author taote
 */
public class CustomerReview {
    int id;
    int cid;
    String comment;
    String date;
    int opinion;
    int pid;

    public CustomerReview() {
    }
    public CustomerReview(int cid, String comment, String date, int opinion, int pid) {
  
        this.cid = cid;
        this.comment = comment;
        this.date = date;
        this.opinion = opinion;
        this.pid = pid;
    }

    public CustomerReview(int id, int cid, String comment, String date, int opinion, int pid) {
        this.id = id;
        this.cid = cid;
        this.comment = comment;
        this.date = date;
        this.opinion = opinion;
        this.pid = pid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getOpinion() {
        return opinion;
    }

    public void setOpinion(int opinion) {
        this.opinion = opinion;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "CustomerReview{"  + ", cid=" + cid + ", comment=" + comment + ", date=" + date + ", opinion=" + opinion + ", pid=" + pid + '}';
    }
    
    
}
