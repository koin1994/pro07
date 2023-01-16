package kr.go.mss.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.go.mss.dto.SampleDTO;
import kr.go.mss.service.SampleService;

@Controller
@RequestMapping("/sample/")
public class SampleController {
		
	@Autowired
	SampleService sampleService;
	
	@GetMapping("list")
	public String sampleList(Model model) throws Exception {
		List<SampleDTO> sampleLst = sampleService.sampleList();
		model.addAttribute("sampleList", sampleLst);
		return "sample/list";
	}
	
	@GetMapping("getSample")
	public String getSample(@RequestParam String id, Model model) throws Exception {
	
		SampleDTO sample = sampleService.getSample(id);
		model.addAttribute("sample", sample);
		return "sample/getSample";
	}
}
