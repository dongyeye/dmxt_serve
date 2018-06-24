package fzu.edu.dmxt.service;

import fzu.edu.dmxt.pojo.Registerdetail;

import java.util.List;

public interface RegisterdetailService {
    void add(Registerdetail registerdetail);
    Registerdetail findRegisterdetail(Registerdetail registerdetail);
    void update(Registerdetail registerdetail);
    List<Registerdetail> listRegisterdetail(int register_ID);
    List<Registerdetail> listByCourse(int course_ID);
    int total(Registerdetail registerdetail);
}
