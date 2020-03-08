package ca.project.Controller;

import javax.inject.Inject;
import javax.swing.Spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ca.project.DTO.PageTO;
import ca.project.DTO.QNABoardDTO;
import ca.project.Service.QNABoardService;

@Controller
@RequestMapping("qnaboard")
public class QNABoardController {
	
	@Inject
	private QNABoardService qnaboard_service;
	
	@RequestMapping("list")
	public void list(PageTO to, Model model) {
		to = qnaboard_service.list(to);
		model.addAttribute("to", to);
	}
	
	@RequestMapping("insert")
	public void insertui() {
	}
	
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(QNABoardDTO dto) {
		qnaboard_service.insert(dto);
		return "redirect:/qnaboard/list";
	}
	
	@RequestMapping("reply/{qna_no}/{curPage}")
	public String replyui(@PathVariable("qna_no") int qna_no,  @PathVariable("curPage") int curPage, Model model) {
		QNABoardDTO dto = qnaboard_service.replyui(qna_no);
		model.addAttribute("dto", dto);
		model.addAttribute("curPage", curPage);
		return "qnaboard/reply";
	}
	
	@RequestMapping(value = "reply", method = RequestMethod.POST)
	public String reply(QNABoardDTO dto, int parent_qna_root, int parent_qna_step, int parent_qna_indent, int curPage) {
		qnaboard_service.reply(dto, parent_qna_root, parent_qna_step, parent_qna_indent);
		return "redirect:/qnaboard/list?curPage="+curPage;
	}
	
	@RequestMapping("read/{qna_no}")
	public String read(@PathVariable("qna_no") int qna_no, int curPage, Model model) {
		QNABoardDTO dto = qnaboard_service.read(qna_no);
		model.addAttribute("dto", dto);
		model.addAttribute("curPage", curPage);
		return "qnaboard/read";
	}
	
	@RequestMapping("update/{qna_no}/{curPage}")
	public String updateui(@PathVariable("qna_no") int qna_no, @PathVariable("curPage") int curPage, Model model) {
		QNABoardDTO dto = qnaboard_service.updateui(qna_no);
		model.addAttribute("dto", dto);
		model.addAttribute("curPage", curPage);
		return "qnaboard/update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(QNABoardDTO dto, @RequestParam("qna_no") int qna_no, @RequestParam("curPage") int curPage) {
		qnaboard_service.update(dto);
		return "redirect:/qnaboard/read/"+qna_no+"?curPage="+curPage;
	}
	
	@RequestMapping("delete/{qna_no}/{curPage}")
	public String delete(@PathVariable("qna_no") int qna_no, @PathVariable("curPage") int curPage) {
		qnaboard_service.delete(qna_no);
		return "redirect:/qnaboard/list?curPage="+curPage;
	}
	
	
	

}
