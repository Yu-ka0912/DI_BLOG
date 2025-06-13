package com.diworksdev.di_blog.util;

import org.mindrot.jbcrypt.BCrypt;

public class PasswordUtil {
	public static void main(String[] args) {
		String plain = "mypassword";


			//ハッシュ化できてるか確認
			String hashed = BCrypt.hashpw(plain, BCrypt.gensalt());
			System.out.println("ハッシュ: " + hashed);

			boolean isMatch = BCrypt.checkpw("mypassword", hashed);
			System.out.println("一致する？ " + isMatch);
		}
	}

