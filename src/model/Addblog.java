package model;

public class Addblog {
    private int typeblog;
    private String title;
    private String content;
    private int creat;
    private String info;
    private String zuozhe;


    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }

    public int getCreat() {
        return  creat;
    }
    public void setCreat(int  creat) {
        this. creat=  creat;
    }

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }


    public int getTypeblog() {
        return typeblog;
    }
    public void setTypeblog(int typeblog) {
        this.typeblog = typeblog;
    }

    public String getInfo() {
        return info;
    }
    public void setInfo(String info) {
        this.info = info;
    }

    public String getZuozhe() {
        return zuozhe;
    }
    public void setZuozhe(String zuozhe) {
        this.zuozhe = zuozhe;
    }


}
