package com.itwill.cryptoexchange.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itwill.cryptoexchange.dao.MembersDao;
import com.itwill.cryptoexchange.dao.MembersDaoImpl;
import com.itwill.cryptoexchange.dto.Members;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MembersDao membersDao;

	// 1.selectAll 2.selectByNo 3.insertMembers 4.sign-in 5.updateMember 6.deleteMember

	@Override
	public List<Members> selectAll() throws Exception {
		return membersDao.selectAll();
	}

	@Override
	public Members selectByNo(int m_no) throws Exception {
		return membersDao.selectByMemberNo(m_no);
	}

	@Override
	public Members selectById(String m_email) throws Exception {
		return membersDao.selectByMemberEmail(m_email);
	}

	@Override
	public boolean insertMember(Members member) throws Exception {
		boolean isSucces = membersDao.insertMember(member);
		return isSucces;

	}

	@Override
	public boolean signIn(Members member) throws Exception {
		boolean isSuccess = false;
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@"+member.getM_email());
		Members m = membersDao.selectByMemberEmail(member.getM_email());
		System.out.println(m);
		if(m!=null) {
			if(m.getM_password().equals(member.getM_password())) {
				isSuccess=true;
				
			}
			
		}
		
		
		
		return isSuccess;
	}

	@Override
	public boolean updateMembers(Members member) throws Exception {
		boolean isSuccess = membersDao.updateMember(member);
		return isSuccess;
	}

	@Override
	public boolean deleteMembers(int memberNo) throws Exception {
		boolean isSuccess = membersDao.deleteMember(memberNo);
		return isSuccess;
	}


}
