package kr.go.mss.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.mss.dto.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<QnaDTO> list() throws Exception {
		return sqlSession.selectList("qna.list");
	}

	@Override
	public QnaDTO detail(int no) throws Exception {
		return sqlSession.selectOne("qna.detail", no);
	}

	@Override
	public void qAdd(QnaDTO qnaDTO) throws Exception {
		sqlSession.insert("qna.qAdd", qnaDTO);
	}

	@Override
	public void aAdd(QnaDTO qnaDTO) throws Exception {
		sqlSession.insert("qna.aAdd", qnaDTO);
	}

	@Override
	public void del(int no) throws Exception {
		sqlSession.delete("qna.del", no);
	}

	@Override
	public void edit(QnaDTO qnaDTO) throws Exception {
		sqlSession.update("qna.edit", qnaDTO);
	}
	
	
}