package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.domain.Member;
import com.board.service.BoardService;
import com.board.service.MemberService;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

	@Autowired
	private MemberService memberService;
	private Member member1=null;

	@GetMapping("/insertForm")
	public String getMethodName() {
		return "member/insertForm";
	}

	@PostMapping("/insert")
	public String postMethodName(Member member, Model model) {
		log.info("insert member =" + member.toString());
		try {
			int count = memberService.insertMember(member);
			if (count > 0) {
				model.addAttribute("message", "%s님의 회원가입 성공".formatted(member.getName()));
				return "member/success";
			}
		} catch (Exception e) {}
		model.addAttribute("message", "회원가입 실패");
		return "member/failed";
	}
	
	@GetMapping("/memberList")
	public String memberList(Model model) {
		log.info("memberList");
		try {
			List<Member> memberList = memberService.memberList();
			model.addAttribute("memberList", memberList);
			log.info(memberList.get(0).getName());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberList";
	}
	@GetMapping("/updateForm")
	public String memberUpdateForm() {
		
		return "member/updateForm";
	}
	@PostMapping("/update")
	public String memberUpdate(Member m, Model model) {
		log.info("memberUpdateForm member="+ m.toString());
		try {
			int count = memberService.updateMember(m);
			if (count > 0) {
				model.addAttribute("message","%s님의 이름바꾸기성공".formatted(m.getName()));
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","%s님의 이름바꾸기 실패".formatted(m.getName()));
		
		return "member/failed";
	}
	
	@GetMapping("/loginForm")
	public String memberLoginForm() {
		return "member/loginForm";
	}
	
	@PostMapping("/login")
	public String login(Member m, Model model) {
		log.info("memberLogin member="+m.toString());
		
		try {
			member1 = memberService.login(m);
			if (member1 == null) {
				model.addAttribute("message","로그인 실패!!탈락!!");
				return "member/failed";
			}
			model.addAttribute("message","%s님 로그인 성공!!".formatted(member1.getName()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/success";
	}
	
	
	@GetMapping("/delete")
	public String memberDelete(Model model) {
		log.info("memberDelete member ="+member1.toString());
		try {
			int count = memberService.deleteMember(member1);
			if (count>0) {
				model.addAttribute("message","%s님의 회원탈퇴 성공!".formatted(member1.getName()));
				return "member/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","%s님의 회원탈퇴  실패하셨삼".formatted(member1.getName()));
		return "member/failed";
	}
	
	@GetMapping("/search")
	public String getMethodName(Member member , Model model) {
		List<Member> memberList;
		try {
			memberList = memberService.memberSearch(member);
			model.addAttribute("memberList",memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "member/memberList";
	}
	
	
}
