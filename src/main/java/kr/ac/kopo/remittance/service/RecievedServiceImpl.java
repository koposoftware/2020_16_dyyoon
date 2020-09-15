package kr.ac.kopo.remittance.service;

import java.util.List;

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

}
