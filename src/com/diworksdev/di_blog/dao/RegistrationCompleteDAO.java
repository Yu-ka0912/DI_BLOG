package com.diworksdev.di_blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.mindrot.jbcrypt.BCrypt;

import com.diworksdev.di_blog.util.DBConnector;
import com.diworksdev.di_blog.util.DateUtil;

public class RegistrationCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
	private String sql = "INSERT INTO users (last_name, first_name, last_name_kana, first_name_kana, email, password, gender, postal_code, prefecture, city, address, role, registered_time) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	public void createUser(String last_name, String first_name, String last_name_kana, String first_name_kana, String email, String password, String gender, String postal_code, String prefecture,  String city, String address, String role)throws

	SQLException {
		try{

			String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, last_name);
			preparedStatement.setString(2, first_name);
			preparedStatement.setString(3, last_name_kana);
			preparedStatement.setString(4, first_name_kana);
			preparedStatement.setString(5, email);
			preparedStatement.setString(6, hashedPassword);
			preparedStatement.setString(7, gender);
			preparedStatement.setString(8, postal_code);
			preparedStatement.setString(9, prefecture);
			preparedStatement.setString(10, city);
			preparedStatement.setString(11, address);
			preparedStatement.setString(12, role);
			preparedStatement.setString(13, dateUtil.getDate());
			preparedStatement.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
				connection.close();
		}
	}
}


