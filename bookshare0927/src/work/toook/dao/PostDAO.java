package work.toook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import work.toook.util.DBConnector;
import work.toook.util.DateUtil;

public class PostDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
	private String sql = "INSERT INTO post(title,introduction,user_name,regist_date,update_date)VALUES(?,?,?,?, 0)";
	int count = 0;

	public int postPush(String title,String introduction,String userName)throws SQLException{
		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,title);
			preparedStatement.setString(2, introduction);
			preparedStatement.setString(3, userName);
			preparedStatement.setString(4, dateUtil.getDate());

			preparedStatement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
		return count;
	}



}
