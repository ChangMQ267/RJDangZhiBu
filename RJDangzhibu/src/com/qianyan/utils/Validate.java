package com.qianyan.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

@Component
public class Validate {
	
	private Pattern pattern;
	private Matcher matcher;
	
	
	public boolean isNull(String username,String password) {
		if(null != username && !username.trim().equals("")
				&& null != password && !password.trim().equals("")) {
			return true;
		}
		return false;
	}
	
	public boolean isNull(String str) {
		if(null != str && !str.trim().equals("")) {
			return true;
		}
		return false;
	}
	
	public boolean checkSpecialCharacter(String s) {
		String regex = "[`~!@#$^&*()=|{}':;',\\[\\].<>/?~£¡@#£¤¡­¡­&*£¨£©&mdash;¡ª|{}¡¾¡¿¡®£»£º¡±¡°'¡££¬¡¢£¿]";
		pattern = Pattern.compile(regex);
		matcher = pattern.matcher(s);
		return matcher.find();
	}
}
