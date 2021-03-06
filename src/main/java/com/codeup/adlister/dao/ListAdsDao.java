//package com.codeup.adlister.dao;
//
//import com.codeup.adlister.models.Ad;
//
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//public class ListAdsDao implements Ads {
//    private List<Ad> ads;
//
//    public List<Ad> all() {
//        if (ads == null) {
//            ads = generateAds();
//        }
//        return ads;
//    }
//
//    public Long insert(Ad ad) {
//        // make sure we have ads
//        if (ads == null) {
//            ads = generateAds();
//        }
//        // we'll assign an "id" here based on the size of the ads list
//        // really the dao would handle this
//        ad.setId((long) ads.size());
//        ads.add(ad);
//        return null;
//    }
//
//    @Override
//    public Ad findByID(String id) {
//        return null;
//    }
//
//    @Override
//    public List<Ad> findByUsername(int user_id) {
//        return null;
//    }
//
//    @Override
//    public void deleteEntry(Long id) {
//
//    }
//
//    @Override
//    public List<Ad> findByUserID(String id) {
//        return null;
//    }
//
//    @Override
//    public List<Ad> search(String input) {
//        return null;
//    }
//
//    @Override
//    public void update(long id, String title, String description) {
//
//    }
//
//    @Override
//    public Object findByUserId(String user_id) {
//        return null;
//    }
//
//    @Override
//    public void delete(int id) throws SQLException {
//
//    }
//
//
//    private List<Ad> generateAds() {
//        List<Ad> ads = new ArrayList<>();
//        ads.add(new Ad(
//            1,
//            1,
//            "playstation for sale",
//            "This is a slightly used playstation"
//        ));
//        ads.add(new Ad(
//            2,
//            1,
//            "Super Nintendo",
//            "Get your game on with this old-school classic!"
//        ));
//        ads.add(new Ad(
//            3,
//            2,
//            "Junior Java Developer Position",
//            "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
//        ));
//        ads.add(new Ad(
//            4,
//            2,
//            "JavaScript Developer needed",
//            "Must have strong Java skills"
//        ));
//        return ads;
//    }
//}
