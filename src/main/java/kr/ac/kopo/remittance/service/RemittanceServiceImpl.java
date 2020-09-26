package kr.ac.kopo.remittance.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.remittance.dao.RemittanceDAO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Service
public class RemittanceServiceImpl implements RemittanceService {

	@Autowired
	RemittanceDAO remittanceDAO;
	
	@Autowired
	AccountDAO accountDAO;

	@Override
	@Transactional
	public void insertRemittance(RemittanceVO remittanceVO) {
		remittanceDAO.insertRemittance(remittanceVO);
		accountDAO.updateRemittanceAmount(remittanceVO);
	}

	@Override
	public void insertReservation(RemittanceVO remittanceVO) {
		remittanceDAO.insertReservation(remittanceVO);
	}

	@Override
	public List<Map<String, Object>> selectAllRemittance(String id) {
		return remittanceDAO.selectAllRemittance(id);
	}

	@Override
	public RemittanceVO selectRemittanceByRemNo(Integer remNo) {
		return remittanceDAO.selectRemittanceByRemNo(remNo);
	}
	
	
	/*-------------------------
		ADMIN PAGE
	-------------------------*/
	@Override
	public List<Map<String, Object>> selectAllRemittanceAdmin() {
		return remittanceDAO.selectAllRemittanceAdmin();
	}

	@Override
	public Map<String, Object> selectRemittanceCount() {
		return remittanceDAO.selectRemittanceCount();
	}

	@Override
	public void updateStatusRemittance(RemittanceVO remittance) {
		remittanceDAO.updateStatusRemittance(remittance);
	}

	
	
	
	
	
}
