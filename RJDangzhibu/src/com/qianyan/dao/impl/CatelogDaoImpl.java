package com.qianyan.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.qianyan.dao.CatelogDao;
import com.qianyan.model.Catelog;

@Component("catelogDao")
public class CatelogDaoImpl extends BaseDaoImpl<Catelog, Integer> implements CatelogDao{

	@Override
	public List<Catelog> searchCatelogs() {
		String hql = "from Catelog c";
		return this.search(hql);
	}

}
