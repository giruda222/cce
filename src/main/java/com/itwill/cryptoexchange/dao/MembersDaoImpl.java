package com.itwill.cryptoexchange.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.cryptoexchange.dto.Members;

@Repository
public class MembersDaoImpl implements MembersDao {
	@Autowired
	private SessionFactory session;

	// 1.selectAll 2.selectMember 3.insertMember 4.updateMember 5.deleteMember

	@Override
	public List<Members> selectAll() throws Exception {
		List<Members> membersList = session.getCurrentSession().createQuery("from Members").getResultList();
		return membersList;
	}

	@Override
	public Members selectByMemberNo(int m_no) throws Exception {
		Members member = session.getCurrentSession().get(Members.class, m_no);

		return member;
	}

	@Override
	public Members selectByMemberEmail(String m_email) throws Exception {
		Members member;
		try {
			Query query = session.getCurrentSession().createQuery("from Members where m_email=:m_email", Members.class);
			query.setParameter("m_email", m_email);

			member = (Members) query.getSingleResult();
		} catch (Exception e) {
			member = null;
		}
		return member;
	}

	@Override
	public boolean insertMember(Members member) throws Exception {
		boolean isSuccess = false;
		Integer i = (Integer) session.getCurrentSession().save(member);
		System.out.println("********" + i);
		if (i != 0) {
			isSuccess = true;
		}
		System.out.println("******************" + isSuccess);
		return isSuccess;
	}

	@Override
	public boolean updateMember(Members member) throws Exception {
		boolean isSuccess = false;
		session.getCurrentSession().update(member);
		isSuccess = true;
		return isSuccess;
	}

	@Override
	public boolean deleteMember(int m_no) throws Exception {
		boolean isSuccess = false;

		Members member = session.getCurrentSession().get(Members.class, m_no);
		session.getCurrentSession().delete(member);
		isSuccess = true;
		return isSuccess;
	}

}