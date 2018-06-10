package fzu.edu.dmxt.service;

import fzu.edu.dmxt.pojo.Account;

public interface AccountService {
    Account get(String account_number,String login_credent,int landing_type);
    int add(Account account);
    Account findByUsername(String acc_name);
}
