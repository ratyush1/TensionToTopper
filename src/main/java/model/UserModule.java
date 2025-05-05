package model;

import java.util.Date;

public class UserModule {

    private int userID;
    private int moduleID;
    private boolean completionStatus;
    private Date completionDate;

    public UserModule() {
    }

    public UserModule(int userID, int moduleID, boolean completionStatus, Date completionDate) {
        this.userID = userID;
        this.moduleID = moduleID;
        this.completionStatus = completionStatus;
        this.completionDate = completionDate;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getModuleID() {
        return moduleID;
    }

    public void setModuleID(int moduleID) {
        this.moduleID = moduleID;
    }

    public boolean isCompletionStatus() {
        return completionStatus;
    }

    public void setCompletionStatus(boolean completionStatus) {
        this.completionStatus = completionStatus;
    }

    public Date getCompletionDate() {
        return completionDate;
    }

    public void setCompletionDate(Date completionDate) {
        this.completionDate = completionDate;
    }

    @Override
    public String toString() {
        return "UserModule{" +
                "userID=" + userID +
                ", moduleID=" + moduleID +
                ", completionStatus=" + completionStatus +
                ", completionDate=" + completionDate +
                '}';
    }
}

