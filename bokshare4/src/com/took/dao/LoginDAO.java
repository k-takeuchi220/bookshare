package com.took.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.took.util.DBConnector;

public class LoginDAO {



    public static List<String> doLoginCheck(String email,String userPassword){

        String sql = "SELECT * FROM user_info WHERE email = ? and user_password = ?";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();
		List<String> stringList  = new ArrayList<String>();
        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, userPassword);

            ResultSet result = statement.executeQuery();
            if (result.next()) {
                if((result.getString("email")).equals(email)
                && (result.getString("user_password")).equals(userPassword)){
                	return stringList;

                }else {
                    result.next();

                }
            }



        } catch (SQLException e) {

            e.printStackTrace();

        }
        stringList.add("ユーザーID または パスワードが間違っています。");
        return stringList;

    }

}