package model;
import java.util.Date;

public class Announcement {

    private int announcementID;
    private int courseID;
    private int adminID;
    private String title;
    private String content;
    private Date postedDate;

    public Announcement() {
    }

    public Announcement(int announcementID, int courseID, int adminID, String title, String content, Date postedDate) {
        this.announcementID = announcementID;
        this.courseID = courseID;
        this.adminID = adminID;
        this.title = title;
        this.content = content;
        this.postedDate = postedDate;
    }

    public int getAnnouncementID() {
        return announcementID;
    }

    public void setAnnouncementID(int announcementID) {
        this.announcementID = announcementID;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }

    @Override
    public String toString() {
        return "Announcement{" +
                "announcementID=" + announcementID +
                ", courseID=" + courseID +
                ", adminID=" + adminID +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", postedDate=" + postedDate +
                '}';
    }
}
