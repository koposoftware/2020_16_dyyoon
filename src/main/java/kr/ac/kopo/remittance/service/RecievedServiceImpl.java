package kr.ac.kopo.remittance.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.remittance.dao.RecievedDAO;
import kr.ac.kopo.remittance.vo.RecievedVO;

@Service
public class RecievedServiceImpl implements RecievedService {

	@Autowired
	private RecievedDAO recievedDAO;
	
	@Override
	public List<RecievedVO> selectRecieved(String id) {
		return recievedDAO.selectRecieved(id);
	}

	@Override
	public List<RecievedVO> selectReicevedOnlyApproved(String id) {
		return recievedDAO.selectReicevedOnlyApproved(id);
	}
	
	@Override
	public RecievedVO selectRecievedDetail(Integer recievedNo) {
		return recievedDAO.selectRecievedDetail(recievedNo);
	}
	
	
	
	
	/* -----------------------------------------
	 * 
	 * 			ADMIN PAGE
	 * 
	 ----------------------------------------- */
	@Override
	public List<RecievedVO> selectAllRecievedAdmin() {
		return recievedDAO.selectAllRecievedAdmin();
	}

	@Override
	public Map<String, Object> selectRecievedCount() {
		return recievedDAO.selectRecievedCount();
	}

	@Override
	public void updateStatusRecieved(RecievedVO recieved) {
		recievedDAO.updateStatusRecieved(recieved);
	}

}
