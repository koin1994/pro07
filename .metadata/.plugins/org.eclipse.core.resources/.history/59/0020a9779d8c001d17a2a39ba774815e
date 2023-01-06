package com.dongwon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dongwon.dao.QnaDAO;
import com.dongwon.dto.QnaDTO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	QnaDAO qnaDAO;

	@Override
	public List<QnaDTO> list() throws Exception {
		return qnaDAO.list();
	}

	@Override
	public QnaDTO detail(int no) throws Exception {
		return qnaDAO.detail(no);
	}

	@Override
	public void qAdd(QnaDTO qnaDTO) throws Exception {
		qnaDAO.qAdd(qnaDTO);
	}

	@Override
	public void aAdd(QnaDTO qnaDTO) throws Exception {
		qnaDAO.aAdd(qnaDTO);
	}

	@Override
	public void del(int no) throws Exception {
		qnaDAO.del(no);
	}

	@Override
	public void edit(QnaDTO qnaDTO) throws Exception {
		qnaDAO.edit(qnaDTO);
	}
	
	
}