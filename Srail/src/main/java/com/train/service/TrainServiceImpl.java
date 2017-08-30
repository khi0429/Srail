package com.train.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.train.model.TrainDAO;
import com.train.model.TrainVO;

@Service("trainServiceImpl")
public class TrainServiceImpl implements TrainService {

	@Inject
	private TrainDAO TrainDao;

	public List<TrainVO> getPlace() {
		return TrainDao.getPlace();
	}
	
	
}
