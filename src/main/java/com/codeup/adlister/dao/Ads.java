package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad findByID(String id);

    List<Ad> findByUsername(int user_id);


    List<Ad> findByUserID(String id);

    List<Ad> search(String input);

    void update(long id, String title, String description);

    Object findByUserId(String user_id);

    void delete(int id) throws SQLException;
}
