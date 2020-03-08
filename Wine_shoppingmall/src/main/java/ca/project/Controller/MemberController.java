package ca.project.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ca.project.DTO.MemberDTO;
import ca.project.DTO.PageTO;
import ca.project.Service.MemberService;



@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private MemberService member_service;
	
	// 회원가입 get
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insertui() {
		return "member/member_insert";
	}
	
	// 회원가입 post
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(MemberDTO dto) {
		member_service.insert(dto);
		return "redirect:/member/list";
	}
	
	// id 중복검사
	@RequestMapping(value = "checkid", method = RequestMethod.GET)
	@ResponseBody
	public String checkid(String id) {
		System.out.println(id);
		String result = member_service.checkid(id);
		if (result != null) {
			result = "0";
		}else {
			result = "1";
		}
		return result;
	}
	
	// 회원목록(페이지처리포함)
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(PageTO to, Model model) {
		to = member_service.list(to);
		model.addAttribute("to", to);
		return "member/member_list";
	}
	
	// 회원정보 자세히 보기
	@RequestMapping(value = "read/{mem_id}", method = RequestMethod.GET)
	public String read(@PathVariable("mem_id") String mem_id, Model model) {
		MemberDTO dto = member_service.read(mem_id);
		model.addAttribute("dto", dto);
		return "member/member_read";
	}
	
	// 회원정보 수정하기 get
	@RequestMapping(value = "update/{mem_id}", method = RequestMethod.GET)
	public String updateui(@PathVariable("mem_id") String mem_id, Model model) {
		MemberDTO dto = member_service.read(mem_id);
		model.addAttribute("dto", dto);
		return "member/member_update";
	}
	
	// 회원정보 수정하기 post
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(MemberDTO dto) {
		member_service.update(dto);
		return "redirect:/member/read/"+dto.getMem_id();
	}
	
	// 회원 삭제
	@RequestMapping(value = "delete/{mem_id}", method = RequestMethod.GET)
	public String delete(@PathVariable("mem_id") String mem_id) {
		member_service.delete(mem_id);
		return "redirect:/member/list";
	}
	
	// 로그인 post
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(MemberDTO dto, HttpServletRequest request, RedirectAttributes redirect_attr) {
		MemberDTO login = member_service.login(dto);
		HttpSession session = request.getSession();
		if (login != null) {
			session.setAttribute("login", login);
		}else {
			session.setAttribute("login", null);
			redirect_attr.addFlashAttribute("msg", false);
			return "redirect:/";
		}
		return "redirect:/";
	}
	
	// 로그아웃
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		member_service.logout(session);
		return "redirect:/";
	}
	
	
}
