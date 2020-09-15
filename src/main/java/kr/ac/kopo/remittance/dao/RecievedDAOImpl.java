package kr.ac.kopo.remittance.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.remittance.vo.RecievedVO;

@Repository
public class RecievedDAOImpl implements RecievedDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<RecievedVO> selectRecieved(String id) {
		return session.selectList("remittance.dao.RecievedDAO.selectRecieved", id);
	}

}
