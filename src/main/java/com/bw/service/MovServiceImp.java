package com.bw.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.entity.Moven;
import com.bw.mapper.MovDao;

@Service
public class MovServiceImp implements MovService{
        @Resource
        private MovDao dao;

		public List<Moven> findAll(String mname) {
			return dao.findAll(mname);
		}

		public int save(Moven m) {
			int i = dao.save(m);
			int mid = m.getMid();
			String[] tid = m.getTid().split(",");
			Map<String, Object> map = new HashMap<String, Object>();
			for (String s : tid) {
				map.put("tid", s);
				map.put("mid", mid);
				int o = dao.saves(map);
				map.clear();
			}
			return 1;
		}

		public Moven toup(Integer mid) {
			return dao.toup(mid);
		}

		public int update(Moven m) {
			int i = dao.update(m);
			int mid = m.getMid();
			int q = dao.delmid(mid);
			String[] tid = m.getTid().split(",");
			Map<String, Object> map = new HashMap<String, Object>();
			for (String s : tid) {
				map.put("tid", s);
				map.put("mid", mid);
				int o = dao.saves(map);
				map.clear();
			}
			return 1;
		}
        
		public int del(String mid) {
			return dao.del(mid);
		}
        
        
}
