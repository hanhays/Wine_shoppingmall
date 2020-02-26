package ca.project.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ca.project.DTO.MemberDTO;
import ca.project.DTO.PageTO;
import ca.project.Persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO member_dao;
	
	
	@Override
	public void insert(MemberDTO dto) {
		member_dao.insert(dto);
	}

	@Override
	public String checkid(String id) {
		return member_dao.checkid(id);
	}
	
	@Override
	public PageTO list(PageTO to) {
		int amount = member_dao.getAmount();
		to.setAmount(amount);
		List<MemberDTO> list = member_dao.getListpage(to);
		to.setList(list);
		return to;
	}

	@Override
	public MemberDTO read(String mem_id) {
		return member_dao.read(mem_id);
	}

	@Override
	public void update(MemberDTO dto) {
		member_dao.update(dto);	
	}
	
	@Override
	public void delete(String mem_id) {
		member_dao.delete(mem_id);
	}

}
