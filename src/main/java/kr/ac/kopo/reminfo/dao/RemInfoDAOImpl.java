package kr.ac.kopo.reminfo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.reminfo.vo.RemInfoVO;

@Repository
public class RemInfoDAOImpl implements RemInfoDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<RemInfoVO> selectRemInfoList(String id) {
		return session.selectList("reminfo.dao.RemInfoDAO.selectRemInfoList", id);
	}

	@Override
	public RemInfoVO selectRemInfoDetail(int remInfoNo) {
		return session.selectOne("reminfo.dao.RemInfoDAO.selectRemInfoDetail", remInfoNo);
	}
	
}
