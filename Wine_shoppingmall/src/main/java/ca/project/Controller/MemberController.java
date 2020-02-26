package ca.project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import ca.project.DTO.MemberDTO;
import ca.project.DTO.PageTO;
import ca.project.Service.MemberService;



@Controller
@RequestMapping("member")
public class MemberController {

	@Autowired
	private MemberService member_service;
	
	
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public void insertui() {
	}
	
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(MemberDTO dto) {
		member_service.insert(dto);
		return "redirect:/member/list";
	}
	
	@RequestMapping(value = "checkid", method = RequestMethod.GET)
	@ResponseBody
	public String checkid(String id) {
		String result = member_service.checkid(id);
		if (result != null) {
			result = "0";
		}else {
			result = "1";
		}
		return result;
	}
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public void list(PageTO to, Model model) {
		to = member_service.list(to);
		model.addAttribute("to", to);
	}
	
	@RequestMapping(value = "read/{mem_id}", method = RequestMethod.GET)
	public String read(@PathVariable("mem_id") String mem_id, Model model) {
		MemberDTO dto = member_service.read(mem_id);
		model.addAttribute("dto", dto);
		return "member/read";
	}
	
	@RequestMapping(value = "update/{mem_id}", method = RequestMethod.GET)
	public String updateui(@PathVariable("mem_id") String mem_id, Model model) {
		MemberDTO dto = member_service.read(mem_id);
		model.addAttribute("dto", dto);
		return "member/update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(MemberDTO dto) {
		member_service.update(dto);
		return "redirect:/member/read/"+dto.getMem_id();
	}
	
	@RequestMapping(value = "delete/{mem_id}", method = RequestMethod.GET)
	public String delete(@PathVariable("mem_id") String mem_id) {
		member_service.delete(mem_id);
		return "redirect:/member/list";
	}
}
