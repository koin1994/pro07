package kr.go.mss.model;

import java.util.List;

import kr.go.mss.dto.QnaDTO;

public interface QnaDAO {
	public List<QnaDTO> list() throws Exception;
	public QnaDTO detail(int no) throws Exception;
	public void qAdd(QnaDTO qnaDTO) throws Exception;
	public void aAdd(QnaDTO qnaDTO) throws Exception;
	public void del(int no) throws Exception;
	public void edit(QnaDTO qnaDTO) throws Exception;
} 