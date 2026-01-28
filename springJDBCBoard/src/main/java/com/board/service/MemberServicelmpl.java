package com.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.dao.MemberDAO;
import com.board.domain.Member;
@Service
public class MemberServicelmpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;
	
	@Override
	public int insertMember(Member member) throws Exception {
		int count = memberDAO.insertMember(member);
		return count;
	}

	@Override
	public List<Member> memberList() throws Exception {
		List<Member> memberList = memberDAO.memberList();
		return memberList;
	}

	@Override
	public List<Member> memberSearch(Member member) throws Exception {
		List<Member> memberList = memberDAO.memberSearch(member);
		return memberList;
	}

	@Override
	public int updateMember(Member member) throws Exception {
		int count = memberDAO.updateMember(member);
		return count;
	}

	@Override
	public int deleteMember(Member member) throws Exception {
		int count = memberDAO.deleteMember(member);
		return count;
	}

	@Override
	public Member login(Member member) throws Exception {
		Member member_ = memberDAO.login(member);
		return member_;
	}

}
