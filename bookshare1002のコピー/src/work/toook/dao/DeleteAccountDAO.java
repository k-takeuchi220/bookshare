package work.toook.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import work.toook.util.DBConnector;

public class DeleteAccountDAO {


//	List<String> deleteMessageList =  new ArrayList<String>();

    public int returnDelete(int userId){

    	DBConnector dbConnector = new DBConnector();
   		Connection connection = dbConnector.getConnection();
   		int count = 0;

        String sql = "DELETE FROM user_info WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, userId);


            count = statement.executeUpdate();

        } catch (SQLException e) {

            e.printStackTrace();
        }try {
        	connection.close();
    }catch(SQLException e) {
    	e.printStackTrace();
    }
        return count;


    }}




