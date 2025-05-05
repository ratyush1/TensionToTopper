package model;

import java.util.Date;

public class UserCourse {

    private int userID;
    private int courseID;
    private Date enrollmentDate;
    private boolean completionStatus;
    private double rating;
    private String feedback;
    private Date feedbackDate;

    public UserCourse() {
    }

    public UserCourse(int userID, int courseID, Date enrollmentDate, boolean completionStatus, double rating, String feedback, Date feedbackDate) {
        this.userID = userID;
        this.courseID = courseID;
        this.enrollmentDate = enrollmentDate;
        this.completionStatus = completionStatus;
        this.rating = rating;
        this.feedback = feedback;
        this.feedbackDate = feedbackDate;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public Date getEnrollmentDate() {
        return enrollmentDate;
    }

    public void setEnrollmentDate(Date enrollmentDate) {
        this.enrollmentDate = enrollmentDate;
    }

    public boolean isCompletionStatus() {
        return completionStatus;
    }

    public void setCompletionStatus(boolean completionStatus) {
        this.completionStatus = completionStatus;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Date getFeedbackDate() {
        return feedbackDate;
    }

    public void setFeedbackDate(Date feedbackDate) {
        this.feedbackDate = feedbackDate;
    }

    @Override
    public String toString() {
        return "UserCourse{" +
                "userID=" + userID +
                ", courseID=" + courseID +
                ", enrollmentDate=" + enrollmentDate +
                ", completionStatus=" + completionStatus +
                ", rating=" + rating +
                ", feedback='" + feedback + '\'' +
                ", feedbackDate=" + feedbackDate +
                '}';
    }
}
