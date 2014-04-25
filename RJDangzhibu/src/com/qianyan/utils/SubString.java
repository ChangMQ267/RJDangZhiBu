package com.qianyan.utils;

public class SubString {
	public String substr(String str, int length, String suffix) {
		/**
		 * �жϴ����Ҫ����ȡ���ַ���str�Ƿ�Ϊ�գ��Լ���Ҫ��ȡ�ĳ���length�Ƿ����һ
		 */
		if (str == null || str.length() == 0 || length < 1) {
			return str;
		}
		/**
		 * ���׷�ӵ��ַ������null��ֵΪ����
		 */
		if (suffix == null) {
			suffix = "";
		}
		/**
		 * �����ʵ��Ҫ��ȡ���ַ�������
		 */
		if (suffix.length() > 0 && length > suffix.length()) {
			length = length - suffix.length();
		} else {
			suffix = "";
		}
		/**
		 * ����һ�����ȼ�����lencounter���Լ�һ���ֽڱ���index��ʼ��Ϊ��
		 */
		int lencounter = 0;
		int index = 0;
		/**
		 * ����һ���ַ����飬���������ַ���ת���ַ�����
		 */
		char[] strarray = str.toCharArray();
		try {
			for (; index < strarray.length; index++) {
				char ch = strarray[index];
				/**
				 * ����step�����Ӣ���ַ���һ��������Ǻ��ּ�����
				 */
				int step = 1;
				if (String.valueOf(ch).getBytes("GBK").length > 1) {
					step = 2;
				}
				/**
				 * ������ȼ���������ֵ����Ҫ��ȡ�ĳ��ȣ�ѭ����ֹ
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
		 * ���index�����㲢��С�ڸ����ַ����ĳ��ȣ���ʼ��ȡ�ַ���������׷�Ӹ�����Ҫ׷�ӵ��ַ���
		 */
		if (index > 0 && index < str.length()) {
			str = str.substring(0, index) + suffix;
		}
			return str;
		} 

}
