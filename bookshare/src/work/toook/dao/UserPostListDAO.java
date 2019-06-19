package work.toook.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import work.toook.dto.PostListDTO;
import work.toook.util.DBConnector;

public class UserPostListDAO {


//ユーザーIDからその人の投稿した記事を取得する
    public  List<PostListDTO> returnPost(int userId){

    	List<PostListDTO> postDetailList = new ArrayList<PostListDTO>();

        String sql = "SELECT * FROM post WHERE user_id = ?";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();

        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, userId);

            ResultSet result = statement.executeQuery();


            while (result.next()) {
            	PostListDTO postListDTO = new PostListDTO();
            	postListDTO.setPostId(result.getInt("id"));
				postListDTO.setTitle(result.getString("title"));
				postListDTO.setIntroduction(result.getString("introduction"));
				postListDTO.setUserName(result.getString("user_name"));
				postListDTO.setRegistDate(result.getString("regist_date"));
				postDetailList.add(postListDTO);
            }



        } catch (SQLException e) {

            e.printStackTrace();

        }


        return postDetailList;

    }


    }




