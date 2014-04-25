package com.qianyan.dao;

import java.util.List;

import com.qianyan.model.Picture;

public interface PictureDao extends BaseDao<Picture, Integer>{

	public List<Picture> serchPicture();
}
