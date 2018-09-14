package com.took.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.took.dto.LoginDTO;
import com.took.util.DBConnector;

public class LoginDAO {

	public LoginDTO loginDTO = new LoginDTO();

//==========================ユーザー情報取得==========================
	public LoginDTO getLoginUserInfo(String userPassword, String email) {

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		//DBのテーブルからユーザー情報取得
		String sql = "SELECT * FROM user_info where user_password = ? AND email = ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, userPassword);
			preparedStatement.setString(2, email);

			ResultSet resultSet = preparedStatement.executeQuery();

			if(resultSet.next()) {
				loginDTO.setUserPassword(resultSet.getString("user_password"));
				loginDTO.setEmail(resultSet.getString("email"));

				//DBにemailが存在すれば
//				if(!(resultSet.getString("email").equals(null))) {
//					loginDTO.setLoginFlg(true);
//				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		//パスワード，メールアドレスを格納
		return loginDTO;
	}

//==========================DBにログインIDが存在するか確認==========================

	public boolean existsEmail(String email) throws SQLException {

		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();

		boolean result = false;

		String sql = "SELECT * FROM user_info WHERE email = ?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);

			ResultSet resultSet = preparedStatement.executeQuery();

			if(resultSet.next()) {
				result = true;
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			connection.close();
		}
		return result;
	}

//==========================DBにログインIDが存在するか確認ここまで==========================

	public LoginDTO getLoginDTO() {
		return loginDTO;
	}
}
