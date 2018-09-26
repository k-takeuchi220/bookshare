package work.toook.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import work.toook.dto.PostListDTO;
import work.toook.util.DBConnector;

public class PostListDAO {



    public  PostListDTO returnPost(int id){
    	PostListDTO PostListDTO = new PostListDTO();

        String sql = "SELECT * FROM post WHERE id = ? limit 1";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();

        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);

            ResultSet result = statement.executeQuery();
            if (result.next()) {


				PostListDTO.setTitle(result.getString("title"));
				PostListDTO.setIntroduction(result.getString("introduction"));
				PostListDTO.setUserName(result.getString("user_name"));
				PostListDTO.setRegistDate(result.getString("regist_date"));
				return PostListDTO;
            }else{

				}



        } catch (SQLException e) {

            e.printStackTrace();

        }


        return PostListDTO;

    }



    }




