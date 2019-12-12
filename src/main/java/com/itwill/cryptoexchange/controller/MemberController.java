package com.itwill.cryptoexchange.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwill.cryptoexchange.dto.Account;
import com.itwill.cryptoexchange.dto.Members;
import com.itwill.cryptoexchange.service.AccountService;
import com.itwill.cryptoexchange.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;

	@Autowired
	AccountService accountService;

	// 1.getMembersList 2.getMember 3.signin 4.signup 5.updateMember 6.deleteMember

	@RequestMapping("/getlist")
	public String getMembersList(Model model) throws Exception {
		List<Members> membersList = memberService.selectAll();
		model.addAttribute("membersList", membersList);
		return "getListTest";
	}

	@RequestMapping("/getMember")
	public String getMember(int m_no, Model model) throws Exception {
		model.addAttribute("selectMember", memberService.selectByNo(m_no));
		return "getMemberTest";
	}
	@RequestMapping(value="/signin", method=RequestMethod.GET)
	public String signinfake()throws Exception{
		
		return "signup";
	}
	
	@RequestMapping(value="/signin", method=RequestMethod.POST)
	public String signIn(Members member, HttpSession session) throws Exception {
		String forward = "";
		Account account = null;
		
		boolean isSuccess = memberService.signIn(member);
		System.out.println("#######"+isSuccess);
		if(isSuccess==true) {
			member = memberService.selectById(member.getM_email());
			account = member.getAccount();
			session.setAttribute("member", member);
			session.setAttribute("account", account);
			forward="demo_index";
			
		}else if(isSuccess==false) {
			forward="signup";
		}
		return forward;
	}

	@RequestMapping("/tosignup")
	public @ResponseBody String toSignUp() throws Exception {
		String returnValue = "success";

		return returnValue;
	}

	@RequestMapping("/tosignin")
	public @ResponseBody String toSignIn() throws Exception {
		String returnValue = "success";

		return returnValue;
	}

	@RequestMapping("/signUpSubmit")
	public @ResponseBody String signUpSubmit(Members member) throws Exception {
		String returnValue = "fail";
		System.out.println(member);
		boolean isSuccess = memberService.insertMember(member);
		if (isSuccess == true) {
			returnValue = "success";
		}
		System.out.println(returnValue);
		return returnValue;
	}

	@RequestMapping("/memberIdCheck")
	public @ResponseBody String memberIdCheck(String m_email) throws Exception {
		Members member = null;
		try {
			member = memberService.selectById(m_email);
		} catch (Exception e) {
//				e.printStackTrace();
		}
		if (member == null) {
			return "true";
		} else {
			return "false";
		}
	}

	@RequestMapping("/updateMember")
	public String updateMember(Members member) throws Exception {
		boolean isSuccess = memberService.updateMembers(member);
		System.out.println(isSuccess);
		return "index";
	}

	// 회원삭제
	@RequestMapping("/deleteMember")
	public String deleteMember(int m_no) throws Exception {
		boolean isSuccess = memberService.deleteMembers(m_no);
		System.out.println(isSuccess);
		return "index";
	}

}
