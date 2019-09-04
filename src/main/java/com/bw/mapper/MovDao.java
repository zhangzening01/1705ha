package com.bw.mapper;

import java.util.List;
import java.util.Map;

import com.bw.entity.Moven;

public interface MovDao {

	List<Moven> findAll(String mname);

	int save(Moven m);

	int saves(Map<String, Object> map);

	Moven toup(Integer mid);

	int update(Moven m);

	int del(String mid);
	
	int delmid(Integer mid);

}
