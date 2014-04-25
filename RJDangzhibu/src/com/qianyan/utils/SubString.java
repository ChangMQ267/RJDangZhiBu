package com.qianyan.utils;

public class SubString {
	public String substr(String str, int length, String suffix) {
		/**
		 * 判断传入的要被截取的字符串str是否为空，以及想要截取的长度length是否大于一
		 */
		if (str == null || str.length() == 0 || length < 1) {
			return str;
		}
		/**
		 * 后边追加的字符串如果null赋值为“”
		 */
		if (suffix == null) {
			suffix = "";
		}
		/**
		 * 计算出实际要截取的字符串长度
		 */
		if (suffix.length() > 0 && length > suffix.length()) {
			length = length - suffix.length();
		} else {
			suffix = "";
		}
		/**
		 * 定义一个长度计数器lencounter，以及一个字节变量index初始化为零
		 */
		int lencounter = 0;
		int index = 0;
		/**
		 * 定义一个字符数组，并把所给字符串转成字符数组
		 */
		char[] strarray = str.toCharArray();
		try {
			for (; index < strarray.length; index++) {
				char ch = strarray[index];
				/**
				 * 定义step如果是英文字符加一个，如果是汉字加两个
				 */
				int step = 1;
				if (String.valueOf(ch).getBytes("GBK").length > 1) {
					step = 2;
				}
				/**
				 * 如果长度计数器的数值大于要截取的长度，循环终止
				 */
				if ((lencounter = lencounter + step) > length) {
					index--;
					break;
				}
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
		/**
		 * 如果index大于零并且小于给定字符串的长度，开始截取字符串，并且追加给定的要追加的字符串
		 */
		if (index > 0 && index < str.length()) {
			str = str.substring(0, index) + suffix;
		}
			return str;
		} 

}
