package com.itwill.cryptoexchange.service;

import java.util.List;

import com.itwill.cryptoexchange.dto.Members;

public interface MemberService {

	List<Members> selectAll() throws Exception;
	
	Members selectByNo(int m_no) throws Exception;
	
	Members selectById(String m_email) throws Exception;
	
	boolean insertMember(Members mebers) throws Exception;

	boolean signIn(Members members) throws Exception;

	boolean updateMembers(Members members) throws Exception;

	boolean deleteMembers(int m_no) throws Exception;

}
