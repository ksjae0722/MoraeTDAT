package MoraeTdat.Service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MoraeTdat.CommonDao;

@Service
public class TestService {
	@Autowired(required=true)
	CommonDao commonDao;
	
	public Map<String, Object> testQuery() {
		Map<String, Object> tmpMap = new HashMap<String, Object>();
		commonDao.getSqlSession().selectList("");
		return tmpMap;
	}
}
