package com.took.util;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmailDuplication {


//	private static String url = "com.mysql.jdbc.Driver";
//	private static String user = "root";
//	private static String password = "mysql";

    public static List<String> doEmailCheck(String email){

        String sql = "SELECT * FROM user_info WHERE email = ?";
   		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
        List<String> stringList = new ArrayList<String>();
        try {
//        		Connection connection = DriverManager.getConnection(url,user,password);

            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);

            ResultSet result = statement.executeQuery();

            if (result.next()) {
                if((result.getString("email")).equals(email)) {

                	stringList.add("そのメールアドレスは既に登録されています。");
                }else {
                    result.next();
                }
            }



        } catch (SQLException e) {

            e.printStackTrace();

        }
        return stringList;

    }

}