package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(com.codeup.adlister.dao.Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public Ad findByID(String id) {
        int queryId = Integer.parseInt(id);
        String query = "SELECT * FROM ads WHERE id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, queryId);
            return extractAd(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding ad", e);
        }
    }

    @Override
    // Passed in argument of String id comes from Login Servlet's doPost "user" attribute
    public List<Ad> findByUserID(String id) {
        // Making a list to hold all user's ads
        List<Ad> userAds = new ArrayList<>();
        // Turning user id (primary key) into queryId for prepared statement
        int queryId = Integer.parseInt(id);
        // MySQL query
        String query = "SELECT * FROM ADS WHERE user_id = ?";
        try {
            return getAds(queryId, userAds, query);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error locating user ID", e);
        }
    }




    @Override
    public List<Ad> all() {
        List<Ad> ads = new ArrayList<>();
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();

            while(rs.next()){
                ads.add(
                        new Ad(
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description")
                        )
                );
            }
            return ads;
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            rs.getLong(1);
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }


    private Ad extractAd(ResultSet rs) throws SQLException {
        if(! rs.next()){
            return null;
        }
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }




    @Override
    // Find all ads for a user based on the foreign key of user_id from ads; obtained when logging in
    public List<Ad> findByUsername(int user_id) {
        List<Ad> ads = new ArrayList<>();
        String query = "SELECT * FROM ads WHERE user_id = ?";
        try {
            return getAds(user_id, ads, query);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding user", e);
        }
    }

    private List<Ad> getAds(int user_id, List<Ad> ads, String query) throws SQLException {
        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setInt(1, user_id);
        ResultSet rs = stmt.executeQuery();
        while (rs.next()){
            ads.add(
                    new Ad(
                            rs.getLong("id"),
                            rs.getLong("user_id"),
                            rs.getString("title"),
                            rs.getString("description")
                    )
            );
        }
        return ads;
    }


    public void deleteEntry (Long ID){
        String query = "DELETE from ads where id = ?";

        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, ID);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error deleting your ad.", e);
        }
    }

    @Override
    public void update(long id, String title, String description) {
        String query = "UPDATE ads SET title = ?, description = ? where id = ?";
        try{
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, title);
            statement.setString(2, description);
            statement.setLong(3, id);
            statement.executeUpdate();
        }catch(SQLException e){
            throw new RuntimeException("There has been an error updating your ad.");
        }

    }



    @Override
    public List<Ad> search(String input){
        PreparedStatement stmt = null;
        List<Ad> ads = new ArrayList<>();

        String lowerInput = input.toLowerCase();

        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE title LIKE ? OR description LIKE ?");
            stmt.setString(1,"%"+lowerInput+"%");
            stmt.setString(2,"%"+lowerInput+"%");

            ResultSet rs = stmt.executeQuery();

            while(rs.next()){
                ads.add(
                        new Ad(
                                rs.getLong("id"),
                                rs.getLong("user_id"),
                                rs.getString("title"),
                                rs.getString("description"),
                                rs.getString("img_url")
                        )
                );
            }
            return ads;

        }catch (SQLException e){
            throw new RuntimeException("Error retrieving search results");
        }

    }


    @Override
    public Object findByUserId(String user_id) {
        return null;
    }





















}
