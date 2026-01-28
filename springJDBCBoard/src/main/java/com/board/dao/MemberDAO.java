package com.board.dao;

import java.sql.JDBCType;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.board.domain.Board;
import com.board.domain.Member;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository
public class MemberDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int insertMember(Member member) {
		String query = "insert into  member VALUES (member_seq.nextval, ? , ? , ? )";
		int count = jdbcTemplate.update(query,member.getId(),member.getPw(),member.getName());
		return count;
	}

	public List<Member> memberList() {
		String query = "select * from member";
		List<Member> memberList = jdbcTemplate.query(query,new RowMapper<Member>() {
			
			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				log.info("******"+member.toString());
				return member;
			}});
		return memberList;
	}

	public int updateMember(Member member) {
		String query = "UPDATE member set name= ?  where id= ? ";
		int count = jdbcTemplate.update(query,member.getName(),member.getId());
		return count;
	}

	public Member login(Member member) {
		String query = "select * from member where id= ? and pw= ? ";
		List<Member> memberList = jdbcTemplate.query(query, new RowMapper<Member>() {

			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				return member;
			}},member.getId(),member.getPw());
		return memberList.isEmpty()?null:memberList.get(0);
	}

	public int deleteMember(Member member) {
		String query = "DELETE from member where id= ? ";
		int count = jdbcTemplate.update(query,member.getId());
		return count;
	}

	public List<Member> memberSearch(Member member) {
		String searchItem = member.getSearchType();
		List<String> searchList = Arrays.asList("id","name");
		if (!searchList.contains(member.getSearchType())) {
			searchItem = "id";
		}
		String query = "select * from member where "+searchItem+" like '%"+member.getKeyword()+"%'";
		List<Member> memberList = jdbcTemplate.query(query,new RowMapper<Member>() {

			@Override
			public Member mapRow(ResultSet rs, int rowNum) throws SQLException {
				Member member = new Member();
				member.setNo(rs.getInt("no"));
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				return member;
			}
			
		});
		return memberList;
	}

	

}
