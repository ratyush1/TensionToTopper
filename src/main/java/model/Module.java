package model;
public class Module {

    private int moduleID;
    private int courseID;
    private String moduleTitle;
    private int moduleOrder;
    private String content;
    private String contentType;
    private String fileReference;

    public Module() {
    }

    public Module(int moduleID, int courseID, String moduleTitle, int moduleOrder, String content, String contentType, String fileReference) {
        this.moduleID = moduleID;
        this.courseID = courseID;
        this.moduleTitle = moduleTitle;
        this.moduleOrder = moduleOrder;
        this.content = content;
        this.contentType = contentType;
        this.fileReference = fileReference;
    }

    public int getModuleID() {
        return moduleID;
    }

    public void setModuleID(int moduleID) {
        this.moduleID = moduleID;
    }

    public int getCourseID() {
        return courseID;
    }

    public void setCourseID(int courseID) {
        this.courseID = courseID;
    }

    public String getModuleTitle() {
        return moduleTitle;
    }

    public void setModuleTitle(String moduleTitle) {
        this.moduleTitle = moduleTitle;
    }

    public int getModuleOrder() {
        return moduleOrder;
    }

    public void setModuleOrder(int moduleOrder) {
        this.moduleOrder = moduleOrder;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getFileReference() {
        return fileReference;
    }

    public void setFileReference(String fileReference) {
        this.fileReference = fileReference;
    }

    @Override
    public String toString() {
        return "Module3{" +
                "moduleID=" + moduleID +
                ", courseID=" + courseID +
                ", moduleTitle='" + moduleTitle + '\'' +
                ", moduleOrder=" + moduleOrder +
                ", content='" + content + '\'' +
                ", contentType='" + contentType + '\'' +
                ", fileReference='" + fileReference + '\'' +
                '}';
    }
}
