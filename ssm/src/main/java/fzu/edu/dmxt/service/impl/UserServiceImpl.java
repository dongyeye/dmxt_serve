package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.UserDao;
import fzu.edu.dmxt.pojo.User;
import fzu.edu.dmxt.service.UserService;
import fzu.edu.dmxt.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    /*
     * 检验用户登录业务
     *
     */
    @Override
    public User checkLogin(String username, String password) {

//        User user = userDao.findByUsername(username);
//        if(user != null && user.getPassword().equals(password)){
//
//            return user;
//        }
        return null;
    }
    @Override
    public User get(int user_id){
        User user = userDao.get(user_id);
        return user;
    }

    @Override
    public List<User> list(Page page) {
        return userDao.list(page);
    }

    @Override
    public int total() {
        return userDao.total();
    }
}
