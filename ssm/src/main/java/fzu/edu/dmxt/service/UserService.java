package fzu.edu.dmxt.service;

import fzu.edu.dmxt.pojo.User;
import fzu.edu.dmxt.util.Page;

import java.util.List;

public interface UserService {

    //检验用户登录
    User checkLogin(String acc_name, String acc_pas);
    User get(int user_id);

    int total();
    List<User> list(Page page);
}