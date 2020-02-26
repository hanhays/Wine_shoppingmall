package ca.project.Service;

import ca.project.DTO.MemberDTO;
import ca.project.DTO.PageTO;

public interface MemberService {

	public abstract void insert(MemberDTO dto);
	public abstract String checkid(String id);
	public abstract PageTO list(PageTO to);
	public abstract MemberDTO read(String mem_id);
	public abstract void update(MemberDTO dto);
	public abstract void delete(String mem_id);
	
	
	
	

}
