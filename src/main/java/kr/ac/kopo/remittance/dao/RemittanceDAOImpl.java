package kr.ac.kopo.remittance.dao;

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

}
