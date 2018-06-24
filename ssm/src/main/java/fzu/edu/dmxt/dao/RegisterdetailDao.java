package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Register;
import fzu.edu.dmxt.pojo.Registerdetail;

import java.util.List;

public interface RegisterdetailDao {
    void add(Registerdetail registerdetail);
    Registerdetail findRegisterdetail(Registerdetail registerdetail);
    void update(Registerdetail registerdetail);
    List<Registerdetail> listRegisterdetail(int register_ID);
    List<Registerdetail> listByCourse(int course_ID);
    int total(Registerdetail registerdetail);
}
