package com.lovo.dao.inter;

import java.util.List;

import com.lovo.entity.Elient;

public interface ElientDao {
	/**
	 * 显示所有客户信息
	 */
	public List<Elient> showCleint(Elient elient);
	/**
	 * 分页显示所有客户信息
	 * @param elient
	 * @param pageNumber
	 * @param pageSize
	 * @return
	 */
	public List<Elient> pageshowCleint(Elient elient,int pageNumber,int pageSize,String str);
	/**
	 * 添加客户
	 * @param e
	 */
	public void addElient(Elient e);
}
