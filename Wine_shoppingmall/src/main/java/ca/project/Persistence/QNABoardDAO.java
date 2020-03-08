package ca.project.Persistence;

import java.util.List;

import ca.project.DTO.PageTO;
import ca.project.DTO.QNABoardDTO;

public interface QNABoardDAO {

	int getAmount();
	
	List<QNABoardDTO> list(PageTO to);
	
	void insert(QNABoardDTO dto);
	
	void rootUpdate(int qna_no);

	QNABoardDTO read(int qna_no);
	
	void cntUpdate(int qna_no);

	void update(QNABoardDTO dto);

	void delete(int qna_no);

	void replyUpdate(int qna_no, int parent_qna_root, int parent_qna_step, int parent_qna_indent);

	void stepUpdate(int parent_qna_root, int parent_qna_step);

}
