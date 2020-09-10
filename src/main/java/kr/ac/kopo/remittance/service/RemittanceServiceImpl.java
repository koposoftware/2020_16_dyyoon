package kr.ac.kopo.remittance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.remittance.dao.RemittanceDAO;
import kr.ac.kopo.remittance.vo.RemittanceVO;

@Service
public class RemittanceServiceImpl implements RemittanceService {

	@Autowired
	RemittanceDAO remittanceDAO;

	@Override
	public void insertRemittance(RemittanceVO remittanceVO) {
		remittanceDAO.insertRemittance(remittanceVO);
	}

	@Override
	public void insertReservation(RemittanceVO remittanceVO) {
		remittanceDAO.insertReservation(remittanceVO);
	}

	@Override
	public List<RemittanceVO> selectAllRemittance(String id) {
		return remittanceDAO.selectAllRemittance(id);
	}
	
	
}
