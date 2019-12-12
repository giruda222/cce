package com.itwill.cryptoexchange.dao;

import java.util.List;

import com.itwill.cryptoexchange.dto.Members;

public interface MembersDao {

	/*
	 * READ ALL
	 */
	List<Members> selectAll() throws Exception;

	/*
	 * CREATE
	 */
	boolean insertMember(Members member) throws Exception;

	/*
	 * READ ONE
	 * 
	 */
	Members selectByMemberNo(int m_no) throws Exception;

	Members selectByMemberEmail(String m_email) throws Exception;

	/*
	 * DELETE
	 */
	boolean deleteMember(int m_no) throws Exception;

	/*
	 * UPDATE
	 */
	boolean updateMember(Members member) throws Exception;

}