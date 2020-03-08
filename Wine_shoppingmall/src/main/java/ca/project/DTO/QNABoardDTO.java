package ca.project.DTO;

import java.io.Serializable;

public class QNABoardDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int qna_no;
	private String mem_id;
	private String qna_title;
	private String qna_content;
	private String qna_regdate;
	private String qna_updatedate;
	private int qna_cnt;
	private int qna_root;
	private int qna_step;
	private int qna_indent;
	
	public QNABoardDTO() {
		// TODO Auto-generated constructor stub
	}

	public QNABoardDTO(int qna_no, String mem_id, String qna_title, String qna_content, String qna_regdate,
			String qna_updatedate, int qna_cnt, int qna_root, int qna_step, int qna_indent) {
		super();
		this.qna_no = qna_no;
		this.mem_id = mem_id;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_regdate = qna_regdate;
		this.qna_updatedate = qna_updatedate;
		this.qna_cnt = qna_cnt;
		this.qna_root = qna_root;
		this.qna_step = qna_step;
		this.qna_indent = qna_indent;
	}

	public int getQna_no() {
		return qna_no;
	}

	public void setQna_no(int qna_no) {
		this.qna_no = qna_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getQna_title() {
		return qna_title;
	}

	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public String getQna_regdate() {
		return qna_regdate;
	}

	public void setQna_regdate(String qna_regdate) {
		this.qna_regdate = qna_regdate;
	}

	public String getQna_updatedate() {
		return qna_updatedate;
	}

	public void setQna_updatedate(String qna_updatedate) {
		this.qna_updatedate = qna_updatedate;
	}

	public int getQna_cnt() {
		return qna_cnt;
	}

	public void setQna_cnt(int qna_cnt) {
		this.qna_cnt = qna_cnt;
	}

	public int getQna_root() {
		return qna_root;
	}

	public void setQna_root(int qna_root) {
		this.qna_root = qna_root;
	}

	public int getQna_step() {
		return qna_step;
	}

	public void setQna_step(int qna_step) {
		this.qna_step = qna_step;
	}

	public int getQna_indent() {
		return qna_indent;
	}

	public void setQna_indent(int qna_indent) {
		this.qna_indent = qna_indent;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "QNABoardDTO [qna_no=" + qna_no + ", mem_id=" + mem_id + ", qna_title=" + qna_title + ", qna_content="
				+ qna_content + ", qna_regdate=" + qna_regdate + ", qna_updatedate=" + qna_updatedate + ", qna_cnt="
				+ qna_cnt + ", qna_root=" + qna_root + ", qna_step=" + qna_step + ", qna_indent=" + qna_indent + "]";
	}
	
	
	
	

}
