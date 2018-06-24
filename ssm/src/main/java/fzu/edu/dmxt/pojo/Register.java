package fzu.edu.dmxt.pojo;

import java.sql.Date;

public class Register {

    private int register_ID;
    private String ip;
    private int course_ID;



    private String start_time;
    private String end_time;
    private String longitude;
    private String latitude;
    private int sign;


    public int getRegister_ID() {
        return register_ID;
    }

    public void setRegister_ID(int register_ID) {
        this.register_ID = register_ID;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public int getCourse_ID() {
        return course_ID;
    }

    public void setCourse_ID(int course_ID) {
        this.course_ID = course_ID;
    }


    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public int getSign() {
        return sign;
    }

    public void setSign(int sign) {
        this.sign = sign;
    }


}
