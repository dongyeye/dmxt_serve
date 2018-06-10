package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.User;
import fzu.edu.dmxt.util.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    User get(int user_id);

    public List<User> list(Page page);

    public int total();
}