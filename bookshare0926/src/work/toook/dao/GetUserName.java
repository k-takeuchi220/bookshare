package work.toook.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import work.toook.dto.LoginDTO;
import work.toook.util.DBConnector;

public class GetUserName {



    public  LoginDTO returnName(String email,String userPassword){
    	LoginDTO loginDTO = new LoginDTO();

        String sql = "SELECT * FROM user_info WHERE email = ? and user_password = ? limit 1";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();

        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, userPassword);

            ResultSet result = statement.executeQuery();
            if (result.next()) {


				loginDTO.setEmail(result.getString("email"));
				loginDTO.setUserPassword(result.getString("user_password"));
				loginDTO.setUserName(result.getString("user_name"));
				loginDTO.setLoginFlg(true);
				return loginDTO;
            }else{

				}



        } catch (SQLException e) {

            e.printStackTrace();

        }


        return loginDTO;

    }



    }




