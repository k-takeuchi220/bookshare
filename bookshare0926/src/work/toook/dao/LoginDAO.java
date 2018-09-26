package work.toook.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import work.toook.util.DBConnector;

public class LoginDAO {



    public static List<String> doLoginCheck(String email,String userPassword){
//    	LoginDTO loginDTO = new LoginDTO();

        String sql 	= "SELECT * FROM user_info WHERE email = ? and user_password = ? limit 1";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();
//		List<String> stringList  = new ArrayList<String>();

		List<String> errorMessage =  new ArrayList<String>();
        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, userPassword);

            ResultSet result = statement.executeQuery();
            if (result.next()) {


//				loginDTO.setEmail(result.getString("email"));
//				loginDTO.setUserPassword(result.getString("user_password"));
//				loginDTO.setUserName(result.getString("user_name"));
//				loginDTO.setLoginFlg(true);
				return errorMessage;
            }else{
//					loginDTO.setLoåginFlg(false);
				}



        } catch (SQLException e) {

            e.printStackTrace();

        }

        errorMessage.add("ユーザーID または パスワードが間違っています。");
        return errorMessage;

    }



    }




