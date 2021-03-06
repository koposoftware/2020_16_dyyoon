package kr.ac.kopo.remittance.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.remittance.dao.RemInfoDAO;
import kr.ac.kopo.remittance.vo.RemInfoVO;
@Service
public class RemInfoServiceImpl implements RemInfoService {

	@Autowired
	private RemInfoDAO dao;
	
	@Override
	public List<RemInfoVO> selectRemInfoList(String id) {
		return dao.selectRemInfoList(id);
	}

	@Override
	public RemInfoVO selectRemInfoDetail(Integer remInfoNo) {
		return dao.selectRemInfoDetail(remInfoNo);
	}

	@Override
	public void insertRemInfo(RemInfoVO remInfo) {
		dao.insertRemInfo(remInfo);
	}
	
	
	/*-------------------------
			ADMIN PAGE
	-------------------------*/
	@Override
	public List<RemInfoVO> selectAllRemInfoList() {
		return dao.selectAllRemInfoList();
	}

	@Override
	public Map<String, Object> selectRemInfoCount() {
		return dao.selectRemInfoCount();
	}

	@Override
	public void updateStatusRemInfo(RemInfoVO remInfo) {
		dao.updateStatusRemInfo(remInfo);
	}

}
