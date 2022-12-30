package kr.go.mss.service;

import java.util.List;

import kr.go.mss.dto.BoardDTO;

public interface BoardService {
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int seq) throws Exception;
	public void boardInsert(BoardDTO dto) throws Exception;
	public void boardDelete(int seq) throws Exception;
	public void boardEdit(BoardDTO dto) throws Exception;	
}
