package com.qianyan.dao.impl;

import java.util.List;

import com.qianyan.dao.PictureDao;
import com.qianyan.model.Picture;

public class PictureDaoImpl extends BaseDaoImpl<Picture, Integer> implements PictureDao{

	@Override
	public List<Picture> serchPicture() {
		String hql = "from Picture p";
		return search(hql);
	}

}
