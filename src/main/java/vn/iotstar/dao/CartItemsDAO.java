package vn.iotstar.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.iotstar.connection.DBConnection;
import vn.iotstar.model.CartItemsModel;
import vn.iotstar.model.CartModel;
import vn.iotstar.model.ProductModel;
import vn.iotstar.model.UserModel;

public class CartItemsDAO {
    Connection connection = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    UserDAO userDAO = new UserDAO();
    
    public void insert(CartItemsModel cartItem) {              
        String query = "INSERT INTO CartItems() VALUES(?, ?, ?, ?, ?)";
        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);
//            ps.setInt(1,cartItem.getId());
//            ps.setInt(2, cartItem.getCart().getCart_id());
//            ps.setInt(3, cartItem.getProduct().getId());
//            ps.setInt(4, cartItem.getQuantity());
//            ps.setDouble(5, cartItem.getUnitPrice());

            ps.setInt(1,cartItem.getId());
            ps.setInt(2,cartItem.getQuantity());
            ps.setDouble(3,cartItem.getUnitPrice());
            ps.setInt(4,cartItem.getProduct().getId());
            ps.setInt(5,cartItem.getCart().getCart_id());

            ps.executeUpdate();                 
            
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    public void edit(CartItemsModel cartItem) {
        String query = "UPDATE CartItems SET quantity = ?, unitPrice = ? WHERE cart_id = ? AND product_id = ?";
        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);           
            
            ps.setInt(1, cartItem.getQuantity());
            ps.setDouble(2, cartItem.getUnitPrice());
            ps.setInt(3, cartItem.getCart().getCart_id());
            ps.setInt(4, cartItem.getProduct().getId());
            ps.executeUpdate();                 
            
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
    public void delete(int id, int pro_id) {
        String query = "DELETE FROM CartItems WHERE cart_id = ? AND product_id = ?";
        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);           
            ps.setInt(1, id);
            ps.setInt(2, pro_id);
            ps.executeUpdate();
            
        } catch (Exception e) {
            // TODO: handle exception
        }        
    }
    public List<CartItemsModel> get(int id) {
    	List<CartItemsModel> list = new ArrayList<>();
        String query = "SELECT CartItems.id, CartItems.cart_id, CartItems.product_id, CartItems.quantity, unitPrice, CART.users_id, buy_date, productName, price, image" +
                " FROM CartItems JOIN CART ON CartItems.cart_id = CART.cart_id JOIN PRODUCT ON CartItems.product_id = PRODUCT.id" +
                " WHERE CartItems.cart_id = ?";
        try {
            connection = new DBConnection().getConnection();
            ps = connection.prepareStatement(query);           
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                UserModel userModel = userDAO.getUserById(rs.getInt(6));
                System.out.println(userModel);
                ProductModel productModel = new ProductModel();
                productModel.setId(rs.getInt(3));
                productModel.setProductName(rs.getString(8));
                productModel.setImage(rs.getString(10));
                productModel.setPrice(rs.getInt(9));

                CartModel cartModel = new CartModel();
                cartModel.setCart_id(rs.getInt(2));
                cartModel.setBuyer(userModel);
                cartModel.setBuyDate(rs.getTimestamp(7));

                CartItemsModel cartItemsModel = new CartItemsModel();
                cartItemsModel.setId(rs.getInt(1));
                cartItemsModel.setQuantity(rs.getInt(4));
                cartItemsModel.setUnitPrice(rs.getDouble(5));
                cartItemsModel.setProduct(productModel);
                cartItemsModel.setCart(cartModel);
                list.add(cartItemsModel);
            }
            return list;
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;

    }
    public static void main(String[] args){
        CartItemsDAO cart = new CartItemsDAO();
        System.out.println(cart.get(0));
    }
}
