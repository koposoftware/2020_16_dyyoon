package kr.ac.kopo.remittance.dao;

import java.util.List;
import java.util.Map;

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

	/*-------------------------
			ADMIN PAGE
	-------------------------*/	
	@Override
	public List<RemInfoVO> selectAllRemInfoList() {
		return session.selectList("remittance.dao.RemInfoDAO.selectAllRemInfoList");
	}

	@Override
	public Map<String, Object> selectRemInfoCount() {
		return session.selectOne("remittance.dao.RemInfoDAO.selectRemInfoCount");
	}

	@Override
	public void updateStatusRemInfo(RemInfoVO remInfo) {
		session.update("remittance.dao.RemInfoDAO.updateStatusRemInfo", remInfo);
	}
	
}
