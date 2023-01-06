package com.dongwon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dongwon.dto.QnaDTO;
import com.dongwon.service.QnaService;

@Controller
@RequestMapping("/qna/")
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	@GetMapping("list.do")
	public String qnaList(Model model) throws Exception {
		List<QnaDTO> qnaList = qnaService.list();
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
	}
	
	@GetMapping("detail.do")
	public String qnaDetail(@RequestParam("no") int no, Model model) throws Exception{
		QnaDTO dto = qnaService.detail(no);
		model.addAttribute("dto", dto);
		return "qna/qnaDetail";
	}
	
	@GetMapping("delete.do")
	public String qnaDel(@RequestParam("no") int no, Model model) throws Exception {
		qnaService.del(no);
		
		List<QnaDTO> qnaList = qnaService.list();
		model.addAttribute("qnaList", qnaList);
		return "qna/qnaList";
	}
	
	@GetMapping("edit.do")
	public String qnaEditForm(@RequestParam("no") int no, Model model) throws Exception {
		QnaDTO dto = qnaService.detail(no);
		model.addAttribute("dto", dto);
		return "qna/qnaEdit";
	}
	
	@PostMapping("edit.do")
	public String qnaEdit(HttpServletRequest request, Model model) throws Exception {
		int no = Integer.parseInt(request.getParameter("no"));
		
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setNo(no);
		qnaDTO.setTitle(request.getParameter("title"));
		qnaDTO.setContent(request.getParameter("content"));
		qnaService.edit(qnaDTO);
		return "redirect:list.do";
	}

	@GetMapping("insert.do")
	public String qnainsertForm(Model model) throws Exception {
		return "qna/qnaAdd";
	}
	
	@PostMapping("insert.do")
	public String qnainsert(HttpServletRequest request, Model model) throws Exception {
		
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setAuthor(request.getParameter("author"));
		qnaDTO.setTitle(request.getParameter("title"));
		qnaDTO.setContent(request.getParameter("content"));
		qnaService.qAdd(qnaDTO);
		return "redirect:list.do";
	}
	
	@GetMapping("wright.do")
	public String qnaWrightForm(Model model) throws Exception {
		return "qna/qnaAdd2";
	}
	
	@PostMapping("wright.do")
	public String qnaWright(HttpServletRequest request, Model model) throws Exception {
		
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setAuthor(request.getParameter("author"));
		qnaDTO.setTitle(request.getParameter("title"));
		qnaDTO.setContent(request.getParameter("content"));
		qnaService.aAdd(qnaDTO);
		return "redirect:list.do";
	}
	
}