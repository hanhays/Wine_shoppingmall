package ca.project.Persistence;

import java.util.List;
import ca.project.DTO.MemberDTO;
import ca.project.DTO.PageTO;

public interface MemberDAO {
	
	// 회원가입
	public abstract void insert(MemberDTO dto);
	
	// id 중복검사
	public abstract String checkid(String id);
	
	// 회원목록(페이지처리포함)
	public abstract int getAmount();
	
	// 회원목록(페이지처리포함)
	public abstract List<MemberDTO> getListpage(PageTO to);
	
	// 회원정보 자세히 보기
	public abstract MemberDTO read(String mem_id);
	
	// 회원정보 수정하기
	public abstract void update(MemberDTO dto);
	
	// 회원 삭제
	public abstract void delete(String mem_id);
	
	// 로그인
	public abstract MemberDTO login(MemberDTO dto);
	
	
}
