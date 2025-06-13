package com.diworksdev.di_blog.dao;

import java.sql.Connection;

import com.diworksdev.di_blog.util.DBConnector;
import com.diworksdev.di_blog.util.DateUtil;


public class RegistrationCompleteDAO {
	private DBConnector dbConnector = new DBConnector();
	private Connection connection = dbConnector.getConnection();
	private DateUtil dateUtil = new DateUtil();
}
