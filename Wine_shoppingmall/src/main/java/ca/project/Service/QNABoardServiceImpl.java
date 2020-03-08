package ca.project.Service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import ca.project.DTO.PageTO;
import ca.project.DTO.QNABoardDTO;
import ca.project.Persistence.QNABoardDAO;

@Service
public class QNABoardServiceImpl implements QNABoardService{

	@Inject
	private QNABoardDAO qna_dao;
	
	@Override
	public PageTO list(PageTO to) {
		int amount = qna_dao.getAmount();
		to.setAmount(amount);
		List<QNABoardDTO> qlist = qna_dao.list(to);
		to.setQlist(qlist);
		return to;
	}

	@Override
	public void insert(QNABoardDTO dto) {
		qna_dao.insert(dto);
		qna_dao.rootUpdate(dto.getQna_no());
	}

	@Override
	public QNABoardDTO read(int qna_no) {
		QNABoardDTO dto = qna_dao.read(qna_no);
		qna_dao.cntUpdate(qna_no);
		return dto;
	}

	@Override
	public QNABoardDTO updateui(int qna_no) {
		QNABoardDTO dto = qna_dao.read(qna_no);
		return dto;
	}

	@Override
	public void update(QNABoardDTO dto) {
		qna_dao.update(dto);
	}

	@Override
	public void delete(int qna_no) {
		qna_dao.delete(qna_no);
	}

	@Override
	public QNABoardDTO replyui(int qna_no) {
		QNABoardDTO dto = qna_dao.read(qna_no);
		return dto;
	}

	@Override
	public void reply(QNABoardDTO dto, int parent_qna_root, int parent_qna_step, int parent_qna_indent) {
		
		qna_dao.stepUpdate(parent_qna_root, parent_qna_step);
		qna_dao.insert(dto);
		qna_dao.replyUpdate(dto.getQna_no(), parent_qna_root, parent_qna_step, parent_qna_indent);
	}


}
