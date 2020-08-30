package kr.ac.kopo.reminfo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.reminfo.dao.RemInfoDAO;
import kr.ac.kopo.reminfo.vo.RemInfoVO;
@Service
public class RemInfoServiceImpl implements RemInfoService {

	@Autowired
	private RemInfoDAO dao;
	
	@Override
	public List<RemInfoVO> selectRemInfoList(String id) {
		return dao.selectRemInfoList(id);
	}

	@Override
	public RemInfoVO selectRemInfoDetail(int remInfoNo) {
		return dao.selectRemInfoDetail(remInfoNo);
	}

}
