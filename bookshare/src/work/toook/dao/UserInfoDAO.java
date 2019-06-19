package work.toook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import work.toook.dto.UserInfoDTO;
import work.toook.util.DBConnector;

public class UserInfoDAO {
	public int createUser(String userName,String userPassword,String email) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		int count = 0;
		String sql = "insert into user_info(user_name,user_password,email, status, loginFlg, regist_date, update_date)"
				+ " values (?, ?, ?, ?, ?, now(), 0)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userName);
			preparedStatement.setString(2, userPassword);
			preparedStatement.setString(3, email);
			preparedStatement.setInt(4, 0);
			preparedStatement.setInt(5, 1);
			count = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}


///////////////////////////////
//
//		public int insertStates() {
//			DBConnector dbConnector = new DBConnector();
//			Connection connection = dbConnector.getConnection();
//			int count = 0;
//			String sql = "insert into user_info where stats = ?";
//			try {
//				PreparedStatement preparedStatement = connection.prepareStatement(sql);
//				preparedStatement.setString);
//
//				count = preparedStatement.executeUpdate();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			try {
//				connection.close();
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//			return count;
//		}
//////////////////////////////


	public boolean isExistsUserInfo(String email, String userPassword) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		boolean result = false;
		String sql = "select count(*) as count from user_info where email=? and user_password=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, userPassword);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				if (resultSet.getInt("count") > 0) {
					result = true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public UserInfoDTO getUserInfo(String email, String userPassword) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		String sql = "select * from user_info where email=? and userPassword=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, userPassword);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				userInfoDTO.setUserId(resultSet.getInt("id"));
				userInfoDTO.setUserName(resultSet.getString("user_name"));
				userInfoDTO.setUserPassword(resultSet.getString("user_password"));
				userInfoDTO.setEmail(resultSet.getString("email"));
				userInfoDTO.setStatus(resultSet.getString("status"));
				userInfoDTO.setLoginFlg(resultSet.getInt("loginFlg"));
				userInfoDTO.setRegistDate(resultSet.getDate("regist_date"));
				userInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userInfoDTO;
	}

	public UserInfoDTO getUserInfo(String email) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		String sql = "select * from user_info where email=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				userInfoDTO.setUserId(resultSet.getInt("id"));
				userInfoDTO.setUserName(resultSet.getString("user_name"));
				userInfoDTO.setUserPassword(resultSet.getString("user_password"));
				userInfoDTO.setEmail(resultSet.getString("email"));
				userInfoDTO.setStatus(resultSet.getString("status"));
				userInfoDTO.setLoginFlg(resultSet.getInt("loginFlg"));
				userInfoDTO.setRegistDate(resultSet.getDate("regist_date"));
				userInfoDTO.setUpdateDate(resultSet.getDate("update_date"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userInfoDTO;
	}

	public int resetPassword(String email, String userPassword) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		String sql = "update user_info set userPassword=? where email=?";
		int result = 0;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userPassword);
			preparedStatement.setString(2, email);
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int login(String email, String userPassword) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		int result=0;
		String sql = "update user_info set logiFlg=true where email=? and userPassword=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, userPassword);
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int logout(String email) {
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		int result=0;
		String sql = "update user_info set loginFlg=false where email=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, email);
			result = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public String concealPassword(String userPassword) {
		int beginIndex = 0;
		int endIndex = 1;
		if(userPassword.length() > 1) {
			endIndex = 2;
		}
		StringBuilder stringBuilder = new StringBuilder("****************");

		String concealPassword = stringBuilder.replace(beginIndex, endIndex, userPassword.substring(beginIndex,endIndex)).toString();
		return concealPassword;
	}
}
