package ca.project.Persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import ca.project.DTO.PageTO;
import ca.project.DTO.QNABoardDTO;

@Repository
public class QNABoardDAOImpl implements QNABoardDAO{

	@Inject
	private SqlSession session;
	private final String NS = "ca.project.QNABoard";
	

	@Override
	public int getAmount() {
		return session.selectOne(NS+".getAmount");
	}

	@Override
	public List<QNABoardDTO> list(PageTO to) {
		RowBounds rowBounds = new RowBounds(to.getStartNum()-1, to.getPerPage());
		return session.selectList(NS+".list", null, rowBounds);
	}

	@Override
	public void insert(QNABoardDTO dto) {
		session.insert(NS+".insert", dto);
	}

	@Override
	public QNABoardDTO read(int qna_no) {
		return session.selectOne(NS+".read", qna_no);
	}

	@Override
	public void cntUpdate(int qna_no) {
		session.update(NS+".cntUpdate", qna_no);
	}

	@Override
	public void update(QNABoardDTO dto) {
		session.update(NS+".update", dto);
	}

	@Override
	public void delete(int qna_no) {
		session.delete(NS+".delete", qna_no);
	}

	@Override
	public void rootUpdate(int qna_no) {
		session.update(NS+".rootUpdate", qna_no);
	}

	@Override
	public void replyUpdate(int qna_no, int parent_qna_root, int parent_qna_step, int parent_qna_indent) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("qna_no", qna_no);
		map.put("parent_qna_root", parent_qna_root);
		map.put("parent_qna_step", parent_qna_step);
		map.put("parent_qna_indent", parent_qna_indent);
		session.update(NS+".replyUpdate", map);
		
		System.out.println(parent_qna_root);
		System.out.println(parent_qna_step);
		System.out.println(parent_qna_indent);
		for(String key : map.keySet()) {
			Integer value = map.get(key);
			System.out.println(key+" : "+value);
		}
		
	}

	@Override
	public void stepUpdate(int parent_qna_root, int parent_qna_step) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("parent_qna_root", parent_qna_root);
		map.put("parent_qna_step", parent_qna_step);
		session.update(NS+".stepUpdate", map);
		
	}

	

	
}
