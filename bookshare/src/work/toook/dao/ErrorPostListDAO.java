package work.toook.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import work.toook.util.DBConnector;

public class ErrorPostListDAO {




    public List<String> getPostList(){
//    	PostListSTO PostListSTO = new PostListSTO();

        String sql 	= "SELECT * FROM post WHERE id BETWEEN (SELECT MAX(id) -9 FROM post) and (SELECT MAX(id)) ORDER BY id DESC;";
   		DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();
//		List<String> stringList  = new ArrayList<String>();

		List<String> errorMessage =  new ArrayList<String>();
        try {


            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet result = statement.executeQuery();
            if (result.next()) {


//				PostListSTO.setEmail(result.getString("email"));
//				PostListSTO.setUserPassword(result.getString("user_password"));
//				PostListSTO.setUserName(result.getString("user_name"));
//				PostListSTO.setLoginFlg(true);
            	return errorMessage;

            }else{
//					PostListSTO.setLoåginFlg(false);
				}



        } catch (SQLException e) {

            e.printStackTrace();

        }

        errorMessage.add("投稿がありません");
        return errorMessage;

    }



    }




