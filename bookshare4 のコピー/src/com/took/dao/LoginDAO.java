package com.took.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.took.dto.LoginDTO;
import com.took.util.DBConnector;

public class LoginDAO {

	public LoginDTO select(String email, String userPassword) throws SQLException {
		LoginDTO dto = new LoginDTO();
		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		String sql = "select * from user_info where email = ? and user_password = ?";
	try {

		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, userPassword);

		ResultSet rs = ps.executeQuery();

		if(rs.next()) {
			dto.setEmail(rs.getString("email"));
			dto.setUserPassword(rs.getString("user_password"));
		}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			con.close();
		}

		return dto;
	}

//	public LoginDTO loginDTO = new LoginDTO();
//
////==========================ユーザー情報取得==========================
//
//	public LoginDTO getLoginUserInfo(String email, String userPassword) {
//
//		DBConnector dbConnector = new DBConnector();
//		Connection connection = dbConnector.getConnection();
//
//		//DBのテーブルからユーザー情報取得
//		String sql = "SELECT * FROM user_info where email = ? AND user_password = ?";
//
//		try {
//			PreparedStatement preparedStatement = connection.prepareStatement(sql);
//
//			preparedStatement.setString(1, email);
//			preparedStatement.setString(2, userPassword);
//
//			ResultSet resultSet = preparedStatement.executeQuery();
//
//			if(resultSet.next()) {
//
//				loginDTO.setEmail(resultSet.getString("email"));
//				loginDTO.setUserPassword(resultSet.getString("user_password"));
//
////				DBにemailが存在すれば
//				if(!(resultSet.getString("email").equals(null))) {
//
//					loginDTO.setLoginFlg(true);
//				}
//			}
//
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
//		//メールアドレス,パスワードを格納
//		return loginDTO;
//	}
//
////==========================DBにログインIDが存在するか確認==========================
//
//	public boolean existsEmail(String email) throws SQLException {
//
//		DBConnector dbConnector = new DBConnector();
//		Connection connection = dbConnector.getConnection();
//
//		boolean result = false;
//
//		String sql = "SELECT * FROM user_info WHERE email = ?";
//
//		try {
//			PreparedStatement preparedStatement = connection.prepareStatement(sql);
//			preparedStatement.setString(1, email);
//
//			ResultSet resultSet = preparedStatement.executeQuery();
//
//			if(resultSet.next()) {
//				result = true;
//			}
//		} catch(SQLException e) {
//			e.printStackTrace();
//		} finally {
//			connection.close();
//		}
//		return result;
//	}
//
////==========================DBにログインIDが存在するか確認ここまで==========================
//
//	public LoginDTO getLoginDTO() {
//		return loginDTO;
//	}

}
