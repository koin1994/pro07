package kr.go.mss.controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.go.mss.dto.FreeDTO;
import kr.go.mss.service.FreeService;

@Controller
@RequestMapping("/free/*")
public class FreeController {
	
	@Autowired
	FreeService freeService;
	
	@GetMapping("list.do")
	public String freeList(Model model) throws Exception {
		List<FreeDTO> freeList = freeService.freeList();
		model.addAttribute("freeList", freeList);
		return "free/freeList";
	} 
	
	@GetMapping("detail.do")
	public String getfreeDetail(@RequestParam("fseq") int fseq, Model model) throws Exception{
		FreeDTO dto = freeService.freeDetail(fseq);
		model.addAttribute("dto", dto);
		return "free/freeDetail";
	}
	
	@GetMapping("delete.do")
	public String freeDelete(@RequestParam("fseq") int fseq, Model model) throws Exception{
		freeService.freeDelete(fseq);
		
		List<FreeDTO> freeList = freeService.freeList();
		model.addAttribute("freeList", freeList);
		return "free/freeList";
	}
	
	@GetMapping("insert.do")
	public String insertForm(HttpServletRequest request, Model model) throws Exception {
		return "free/freeInsert";
	}
	
	@PostMapping("insert.do")
	public String freeInsert(HttpServletRequest request, Model model) throws Exception {
		FreeDTO dto = new FreeDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		dto.setNickname(request.getParameter("nickname"));
		freeService.freeInsert(dto);
		
		return "redirect:list.do";
	}
	
	@GetMapping("edit.do")
	public String editForm(HttpServletRequest request, Model model) throws Exception {
		int fseq = Integer.parseInt(request.getParameter("fseq"));
		FreeDTO dto = freeService.freeDetail(fseq);
		model.addAttribute("dto", dto);
		return "free/freeEdit";
	}
	
	@PostMapping("edit.do")
	public String freeEdit(HttpServletRequest request, Model model) throws Exception {
		int fseq = Integer.parseInt(request.getParameter("fseq"));
		
		FreeDTO dto = new FreeDTO();
		dto.setFseq(fseq);
		dto.setTitle(request.getParameter("title"));
		dto.setContent(request.getParameter("content"));
		freeService.freeEdit(dto);
		
		return "redirect:list.do";
	}
	
	
    @RequestMapping(value="imageUpload.do", method = RequestMethod.POST)
    public void imageUpload(HttpServletRequest request,
    		HttpServletResponse response, MultipartHttpServletRequest multiFile
    		, @RequestParam MultipartFile upload) throws Exception{
    	// 랜덤 문자 생성
    	UUID uid = UUID.randomUUID();
    	
    	OutputStream out = null;
    	PrintWriter printWriter = null;
    	
    	//인코딩
    	response.setCharacterEncoding("utf-8");
    	response.setContentType("text/html;charset=utf-8");
    	try{
    		//파일 이름 가져오기
    		String fileName = upload.getOriginalFilename();
    		byte[] bytes = upload.getBytes();
    		
    		//이미지 경로 생성
    		String path = "D:\\kty\\pro04\\pro04\\src\\main\\webapp\\resources\\upload" + "ckImage/";	// 이미지 경로 설정(폴더 자동 생성)
    		String ckUploadPath = path + uid + "_" + fileName;
    		File folder = new File(path);
    		System.out.println("path:"+path);	// 이미지 저장경로 console에 확인
    		//해당 디렉토리 확인
    		if(!folder.exists()){
    			try{
    				folder.mkdirs(); // 폴더 생성
    		}catch(Exception e){
    			e.getStackTrace();
    		}
    	}
    	
    	
    	out.write(bytes);
    	out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화
    	
    	String callback = request.getParameter("CKEditorFuncNum");
    	printWriter = response.getWriter();
    	String fileUrl = "/free/ckImgSubmit.do?uid=" + uid + "&fileName=" + fileName; // 작성화면
    	
    	// 업로드시 메시지 출력
    	printWriter.println("{\"filename\" : \""+fileName+"\", \"uploaded\" : 1, \"url\":\""+fileUrl+"\"}");
    	printWriter.flush();
    	
    	}catch(IOException e){
    		e.printStackTrace();
    	} finally {
    		try {
    		if(out != null) { out.close(); }
    		if(printWriter != null) { printWriter.close(); }
    	} catch(IOException e) { e.printStackTrace(); }
    	}
    	return;
    }
    
    @RequestMapping(value="ckImgSubmit.do")
    public void ckSubmit(@RequestParam(value="uid") String uid
    		, @RequestParam(value="fileName") String fileName
    		, HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException{
    	
    	String path = "D:\\kty\\pro04\\pro04\\src\\main\\webapp\\resources\\upload" + "ckImage/";	// 저장된 이미지 경로
    	System.out.println("path:"+path);
    	String sDirPath = path + uid + "_" + fileName;
    	
    	File imgFile = new File(sDirPath);
    	
    	if(imgFile.isFile()){
    		byte[] buf = new byte[1024];
    		int readByte = 0;
    		int length = 0;
    		byte[] imgBuf = null;
    		
    		FileInputStream fileInputStream = null;
    		ByteArrayOutputStream outputStream = null;
    		ServletOutputStream out = null;
    		
    		try{
    			
    			outputStream = new ByteArrayOutputStream();
    			out = response.getOutputStream();
    			
    			while((readByte = fileInputStream.read(buf)) != -1){
    				outputStream.write(buf, 0, readByte); 
    			}
    			
    			imgBuf = outputStream.toByteArray();
    			length = imgBuf.length;
    			out.write(imgBuf, 0, length);
    			out.flush();
    			
    		}catch(IOException e){
    			e.printStackTrace();
    		}finally {
    			outputStream.close();
    			fileInputStream.close();
    			out.close();
    			}
    		}
    }
}
