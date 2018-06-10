package fzu.edu.dmxt.service.impl;

import fzu.edu.dmxt.dao.AccountDao;
import fzu.edu.dmxt.pojo.Account;
import fzu.edu.dmxt.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountDao accountDao;

    @Override
    public Account get(String account_number,String login_credent,int landing_type){
        Account account =accountDao.findByUsername(account_number);
        if(account != null && account.getLogin_credent().equals(login_credent) && account.getLanding_type()==landing_type){
            return account;
        }
        return null;
    }
    @Override
    public int add(Account account){
        return accountDao.add(account);
    }

    @Override
    public  Account findByUsername(String acc_name){
        return accountDao.findByUsername(acc_name);
    }
}
