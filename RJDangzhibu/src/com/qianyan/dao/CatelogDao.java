package com.qianyan.dao;

import java.util.List;

import com.qianyan.model.Catelog;

public interface CatelogDao extends BaseDao<Catelog, Integer>{

	public List<Catelog> searchCatelogs();
}
