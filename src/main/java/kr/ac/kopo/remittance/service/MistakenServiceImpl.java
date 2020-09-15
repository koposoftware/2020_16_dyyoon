package kr.ac.kopo.remittance.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.remittance.dao.MistakenDAO;
import kr.ac.kopo.remittance.vo.MistakenVO;
@Service
public class MistakenServiceImpl implements MistakenService {

	@Autowired
	MistakenDAO mistakenDAO;
	
	@Override
	public void insertMistaken(MistakenVO mistakenVO) {
		mistakenDAO.insertMistaken(mistakenVO);
	}

	@Override
	public List<Map<String, Object>> selectAllMistaken(String id) {
		return mistakenDAO.selectAllMistaken(id);
	}

	
	
	/*------------------------------------
	 * 
	 * 			ADMIN PAGE
	 * 
	 * ----------------------------------*/
	@Override
	public List<Map<String, Object>> selectAllMistakenAdmin() {
		return mistakenDAO.selectAllMistakenAdmin();
	}

	@Override
	public Map<String, Object> selectMistakenCount() {
		return mistakenDAO.selectMistakenCount();
	}

	@Override
	public MistakenVO selectMistakenByMisNo(Integer misNo) {
		return mistakenDAO.selectMistakenByMisNo(misNo);
	}
	

}
