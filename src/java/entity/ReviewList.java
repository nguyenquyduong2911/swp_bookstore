/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author taote
 */
public class ReviewList {
    private int reviewId;
    private int accountId;
    private String accountName;
    private String comment;
    private String date;
    private String opinion;

    public ReviewList() {
    }

    public ReviewList(int reviewId, int accountId, String accountName, String comment, String date, String opinion) {
        this.reviewId = reviewId;
        this.accountId = accountId;
        this.accountName = accountName;
        this.comment = comment;
        this.date = date;
        this.opinion = opinion;
    }

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
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

    public String getOpinion() {
        return opinion;
    }

    public void setOpinion(String opinion) {
        this.opinion = opinion;
    }

    @Override
    public String toString() {
        return "ReviewList{" + "reviewId=" + reviewId + ", accountId=" + accountId + ", accountName=" + accountName + ", comment=" + comment + ", date=" + date + ", opinion=" + opinion + '}';
    }
    
}
