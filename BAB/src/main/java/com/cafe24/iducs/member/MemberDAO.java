package com.cafe24.iducs.member;

public interface MemberDAO {
	 public void insertmember(MemberDTO dto);
	 public int selectmember(MemberDTO dto);
	 public MemberDTO selectmember1(MemberDTO dto);
	 public int checkmember(MemberDTO dto);
	 public MemberDTO selectmember2(String userid);
}
