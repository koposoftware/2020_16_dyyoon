package kr.ac.kopo.exchange.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.exchange.vo.ExchangeVO;

@Repository
public class ExchangeDAOImpl implements ExchangeDAO {

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public List<ExchangeVO> selectAllExchangeRate() {
		return session.selectList("exchange.dao.ExchangeDAO.selectAllExchangeRate");
	}

	@Override
	public List<Map<String, Object>> selectExchangeRateForIndex() {
		return session.selectList("exchange.dao.ExchangeDAO.selectExchangeRateForIndex");
	}
}
