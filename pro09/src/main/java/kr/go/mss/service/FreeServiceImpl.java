package kr.go.mss.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.mss.model.FreeDAO;
import kr.go.mss.dto.FreeDTO;

@Service
public class FreeServiceImpl implements FreeService{
	@Autowired
	FreeDAO freeDAO;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return freeDAO.freeList();
	}

	@Override
	public FreeDTO freeDetail(int fseq) throws Exception {
		return freeDAO.freeDetail(fseq);
	}

	@Override
	public void freeDelete(int fseq) throws Exception {
		freeDAO.freeDelete(fseq);
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		freeDAO.freeInsert(dto);
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		freeDAO.freeEdit(dto);
	}
	
	
}
