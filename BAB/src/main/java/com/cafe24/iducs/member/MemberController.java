package com.cafe24.iducs.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

	
	@Controller
	public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping(value="/membersignup",method=RequestMethod.GET)
	public String signup() {
		
		return "member/member-signup";
	}
	@RequestMapping(value="/membersignupgo.do",method=RequestMethod.POST)
	public ModelAndView membersignupsuccess(MemberDTO dto , ModelAndView mav) {
		int count = dao.checkmember(dto);
		if(count>=1)
		{
			mav.addObject("msg", "id 중복입니다.");
			mav.setViewName("member/member-signup");
			
		}
		else{
			dao.insertmember(dto);
			mav.setViewName("member/member-login");
		}
		return mav;
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		
		return "member/member-login";
	}
	@RequestMapping(value="/memberLogin.do",method=RequestMethod.POST)
	public ModelAndView loginsuccess(MemberDTO dto, HttpServletRequest request, ModelAndView mav) {
			
		HttpSession session = request.getSession(true);		
		int count = dao.selectmember(dto);
		MemberDTO user = dao.selectmember1(dto);
		
			if(count == 1) {
				session.setAttribute("name", user.getName());
				session.setAttribute("id", user.getId());
			}
			else {
				mav.addObject("msg", "id,pw를 확인해주세요.");
				mav.setViewName("member/member-login");
				return mav;
			}
			
			mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession(true);	
		session.invalidate();
		
		return "index";
	}
}
