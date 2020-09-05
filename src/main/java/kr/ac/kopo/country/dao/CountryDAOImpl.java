package kr.ac.kopo.country.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.country.vo.CountryVO;
@Repository
public class CountryDAOImpl implements CountryDAO {
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public List<CountryVO> selectAllCountryList() {
		return session.selectList("country.dao.CountryDAO.selectAllCountryList");
	}

}
