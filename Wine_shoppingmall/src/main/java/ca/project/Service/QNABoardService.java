package ca.project.Service;

import ca.project.DTO.PageTO;
import ca.project.DTO.QNABoardDTO;

public interface QNABoardService {
	
	PageTO list(PageTO to);
	
	void insert(QNABoardDTO dto);
	
	QNABoardDTO read(int qna_no);
	
	QNABoardDTO updateui(int qna_no);
	
	void update(QNABoardDTO dto);
	
	void delete(int qna_no);

	void reply(QNABoardDTO dto, int parent_qna_root, int parent_qna_step, int parent_qna_indent);

	QNABoardDTO replyui(int qna_no);
	

}
