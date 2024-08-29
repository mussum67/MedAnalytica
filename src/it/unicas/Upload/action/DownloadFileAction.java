// DownloadFileAction.java
package it.unicas.Upload.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class DownloadFileAction extends ActionSupport {
    private String filePath;
    private InputStream fileInputStream;
    private String fileName;

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public InputStream getFileInputStream() {
        return fileInputStream;
    }

    public String getFileName() {
        return fileName;
    }

    @Override
    public String execute() {
        try {
            File file = new File(filePath);
            fileInputStream = new FileInputStream(file);
            fileName = file.getName();
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ERROR;
        }
    }
}
