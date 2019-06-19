package work.toook.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import work.toook.dto.PostListDTO;
import work.toook.util.DBConnector;

public class PostListDAO {


//	最新10件----------------------------------------------------------------
    public  List<PostListDTO> returnPost(){

    	List<PostListDTO> postDetailList = new ArrayList<PostListDTO>();

        String sql = "SELECT * FROM post WHERE id BETWEEN (SELECT MAX(id) -9 FROM post) and (SELECT MAX(id)) ORDER BY id DESC;";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();

        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();


            while (result.next()) {
            	PostListDTO postListDTO = new PostListDTO();
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



//    最新10~20件----------------------------------------------------------------

    public  List<PostListDTO> returnPost2(){

    	List<PostListDTO> postDetailList = new ArrayList<PostListDTO>();

        String sql = "SELECT * FROM post WHERE id BETWEEN (SELECT MAX(id) -19 FROM post) and (SELECT MAX(id) -10 FROM post) ORDER BY id DESC;";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();

        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();


            while (result.next()) {
            	PostListDTO postListDTO = new PostListDTO();
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


//    最新20~30件----------------------------------------------------------------

    public  List<PostListDTO> returnPost3(){

    	List<PostListDTO> postDetailList = new ArrayList<PostListDTO>();

        String sql = "SELECT * FROM post WHERE id BETWEEN (SELECT MAX(id) -29 FROM post) and (SELECT MAX(id) -20 FROM post) ORDER BY id DESC;";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();

        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();


            while (result.next()) {
            	PostListDTO postListDTO = new PostListDTO();
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




