package kr.ac.kopo.remittance.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.remittance.vo.RemittanceVO;

@Repository
public class RemittanceDAOImpl implements RemittanceDAO {
	
	@Autowired
	SqlSessionTemplate session;

	@Override
	public void insertRemittance(RemittanceVO remittanceVO) {
		session.insert("remittance.dao.RemittanceDAO.insertRemittance", remittanceVO);

	}

	@Override
	public void insertReservation(RemittanceVO remittanceVO) {
		session.insert("remittance.dao.RemittanceDAO.insertReservation", remittanceVO);
	}

	@Override
	public List<Map<String, Object>> selectAllRemittance(String id) {
		return session.selectList("remittance.dao.RemittanceDAO.selectAllRemittance", id);
	}

	@Override
	public RemittanceVO selectRemittanceByRemNo(Integer remNo) {
		return session.selectOne("remittance.dao.RemittanceDAO.selectRemittanceByRemNo", remNo);
	}
	
	
	
	/*-------------------------
		ADMIN PAGE
	-------------------------*/
	@Override
	public List<Map<String, Object>> selectAllRemittanceAdmin() {
		return session.selectList("remittance.dao.RemittanceDAO.selectAllRemittanceAdmin");
	}
	
	@Override
	public Map<String, Object> selectRemittanceCount() {
		return session.selectOne("remittance.dao.RemittanceDAO.selectRemittanceCount");
	}
	
	@Override
	public void updateStatusRemittance(RemittanceVO remittance) {
		session.update("remittance.dao.RemittanceDAO.updateStatusRemittance", remittance);
	}

	

}
