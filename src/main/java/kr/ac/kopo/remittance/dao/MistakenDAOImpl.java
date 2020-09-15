package kr.ac.kopo.remittance.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.remittance.vo.MistakenVO;

@Repository
public class MistakenDAOImpl implements MistakenDAO {

	@Autowired
	SqlSessionTemplate session;
	
	@Override
	public void insertMistaken(MistakenVO mistakenVO) {
		session.insert("remittance.dao.MistakenDAO.insertMistaken", mistakenVO);
	}

	@Override
	public List<Map<String, Object>> selectAllMistaken(String id) {
		return session.selectList("remittance.dao.MistakenDAO.selectAllMistaken", id);
	}

}
