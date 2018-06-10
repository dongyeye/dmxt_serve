package fzu.edu.dmxt.dao;

import fzu.edu.dmxt.pojo.Account;

public interface AccountDao {
    Account findByUsername(String acc_name);
    int add(Account account);
}
