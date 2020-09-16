package kr.ac.kopo.remittance.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.remittance.vo.RecievedVO;

@Repository
public class RecievedDAOImpl implements RecievedDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<RecievedVO> selectRecieved(String id) {
		return session.selectList("remittance.dao.RecievedDAO.selectRecieved", id);
	}

	@Override
	public List<RecievedVO> selectReicevedOnlyApproved(String id) {
		return session.selectList("remittance.dao.RecievedDAO.selectReicevedOnlyApproved", id);
	}

	@Override
	public RecievedVO selectRecievedDetail(Integer recievedNo) {
		return session.selectOne("remittance.dao.RecievedDAO.selectRecievedDetail", recievedNo);
	}
	
	/* -----------------------------------------
	 * 
	 * 			ADMIN PAGE
	 * 
	 ----------------------------------------- */
	@Override
	public List<RecievedVO> selectAllRecievedAdmin() {
		return session.selectList("remittance.dao.RecievedDAO.selectAllRecievedAdmin");
	}


	@Override
	public Map<String, Object> selectRecievedCount() {
		return session.selectOne("remittance.dao.RecievedDAO.selectRecievedCount");
	}

	@Override
	public void updateStatusRecieved(RecievedVO recieved) {
		session.update("remittance.dao.RecievedDAO.updateStatusRecieved", recieved);
	}

}
