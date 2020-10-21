package com.cafe24.iducs.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sql;

	private static final String NAMESPACE = "com.cafe24.iducs.mappers.memberMapper";

	public void insertmember(MemberDTO dto) {

		sql.insert(NAMESPACE + ".insertmember", dto);
	}

	public int selectmember(MemberDTO dto) {
		
		int count=sql.selectOne(NAMESPACE + ".selectmember", dto);
		
		return count;
	}
	
	public MemberDTO selectmember1(MemberDTO dto) {
		 
		MemberDTO user = sql.selectOne(NAMESPACE + ".selectmember1", dto);
		 
		 return user;
	 }
	
	 public int checkmember(MemberDTO dto) {
		 
		 int count = sql.selectOne(NAMESPACE + ".checkmember", dto);
		 
		 return count;
	 }
}
