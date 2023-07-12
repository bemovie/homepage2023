package egovframework.let.join.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface JoinService {

	//아이디 중복체크
	public int duplicateCheck(JoinVO vo) throws Exception;
	
	//회원가입
	public String insertJoin(JoinVO vo) throws Exception;

}
