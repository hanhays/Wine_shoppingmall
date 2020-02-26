package ca.project.Persistence;

import java.util.List;
import ca.project.DTO.MemberDTO;
import ca.project.DTO.PageTO;

public interface MemberDAO {
	
	
	public abstract void insert(MemberDTO dto);
	public abstract String checkid(String id);
	public abstract int getAmount();
	public abstract List<MemberDTO> getListpage(PageTO to);
	public abstract MemberDTO read(String mem_id);
	public abstract void update(MemberDTO dto);
	public abstract void delete(String mem_id);
	
	
}
