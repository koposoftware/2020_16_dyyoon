package kr.ac.kopo.remittance.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.remittance.vo.RemInfoVO;

@Repository
public class RemInfoDAOImpl implements RemInfoDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<RemInfoVO> selectRemInfoList(String id) {
		return session.selectList("remittance.dao.RemInfoDAO.selectRemInfoList", id);
	}

	@Override
	public RemInfoVO selectRemInfoDetail(Integer remInfoNo) {
		return session.selectOne("remittance.dao.RemInfoDAO.selectRemInfoDetail", remInfoNo);
	}

	@Override
	public void insertRemInfo(RemInfoVO remInfo) {
		session.insert("remittance.dao.RemInfoDAO.insertRemInfo", remInfo);
	}
	
}
