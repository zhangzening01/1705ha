package com.bw.service;

import java.util.List;

import com.bw.entity.Moven;

public interface MovService {

	List<Moven> findAll(String mname);

	int save(Moven m);

	Moven toup(Integer mid);

	int update(Moven m);

	int del(String mid);

}
