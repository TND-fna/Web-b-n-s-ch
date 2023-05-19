package vn.iotstar.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.iotstar.connection.DBConnection;
import vn.iotstar.model.CartModel;
import vn.iotstar.model.UserModel;

public class CartDAO {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    UserDAO userDAO = new UserDAO();

    public CartModel getCart(int id) {
        String query = "SELECT cart_id, buy_date, users_email, users_username, [user_id] "
                + "FROM CART JOIN USERS "
                + "ON CART.user_id = USERS.users_id "
                + "WHERE cart_id = ?";

        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                UserModel userModel = userDAO.getUserById(rs.getInt("user_id"));
                CartModel cart = new CartModel();
                cart.setCart_id(rs.getInt("cart_id"));
                cart.setBuyer(userModel);
                cart.setBuyDate(rs.getString("buy_date"));
                return cart;
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    public CartModel getCartByUserId(int id) {
        String query = "SELECT CART.cart_id, CART.buy_date, USERS.users_email, USERS.users_username "
                + " FROM CART "
                + "JOIN USERS ON CART.users_id = USERS.users_id "
                + " WHERE USERS.users_id = ? ";
        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("con cac");
                UserModel userModel = userDAO.getUserById(id);
                System.out.println(userModel);
                CartModel cart = new CartModel();
                cart.setCart_id(rs.getInt("cart_id"));
                System.out.println(rs.getInt("cart_id"));
                cart.setBuyer(userModel);
                cart.setBuyDate(rs.getString("buy_date"));
                System.out.println(rs.getString("buy_date"));
                System.out.println("close connect");
                connection.close();
                return cart;
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    public void insertCart(CartModel cart) {
        String query = "INSERT INTO CART(user_id) VALUES(?)";

        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);
            //ps.setInt(1, cart.getCart_id());
            ps.setInt(1, cart.getBuyer().getUserID());
            //ps.setDate(3, new Date(cart.getBuyDate().getTime()));
            ps.executeUpdate();

        } catch (Exception e) {
            // TODO: handle exception
        }
    }

//    public void updateCart(CartModel cart) {
//        String query = "UPDATE CART SET user_id = ?, buy_date = ? WHERE cart_id =?";
//
//        try {
//            connection = new DBConnection().getConnection();
//            ps = connection.prepareStatement(query);
//            ps.setInt(3, cart.getCart_id());
//            ps.setInt(1, cart.getBuyer().getUserID());
//            ps.setString(2, new Date(cart.getBuyDate()));
//            ps.executeUpdate();
//
//        } catch (Exception e) {
//            // TODO: handle exception
//        }
//    }

    public void deleteProduct(CartModel cart) {
        String query = "DELETE FROM CART WHERE cart_id = ?";

        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);
            ps.setInt(1, cart.getCart_id());
            ps.executeUpdate();

        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public static void main(String[] args) {
        CartDAO cartDAO = new CartDAO();
        System.out.println(cartDAO.getCartByUserId(1));
    }
}
