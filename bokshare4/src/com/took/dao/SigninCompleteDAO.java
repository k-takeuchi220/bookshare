package com.took.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.took.util.DBConnector;
import com.took.util.DateUtil;


public class SigninCompleteDAO {

	private DateUtil dateUtil = new DateUtil();


	private String sql = "INSERT INTO login_user_transaction(user_name,user_password,email,insert_date)VALUES(?,?,?,?)";

	public void createUser(String userName,String userPassword,String email)throws
	SQLException{

		DBConnector dbConnector = new DBConnector();

		Connection connection = dbConnector.getConnection();
		try{

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,userName);
			preparedStatement.setString(2,userPassword);
			preparedStatement.setString(3,email);
			preparedStatement.setString(4,dateUtil.getDate());

			preparedStatement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}


}
