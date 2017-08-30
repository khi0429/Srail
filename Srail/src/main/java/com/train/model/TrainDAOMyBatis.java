package com.train.model;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;
import javax.annotation.*;

@Repository("boardDAOMyBatis")
public class TrainDAOMyBatis extends SqlSessionDaoSupport implements TrainDAO {
	
	private final String NS="train.model.trainMapper";
	
	@Resource(name="sqlSessionFactory")
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public List<TrainVO> getPlace() {
		return this.getSqlSession().selectList(NS+".getPlace");
	}


}





