package ca.project.Persistence;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import ca.project.DTO.MemberDTO;
import ca.project.DTO.PageTO;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Inject
	private SqlSession session;
	
	private final String NS = "ca.project.Member";
	
	
	@Override
	public void insert(MemberDTO dto) {
		session.insert(NS + ".insert", dto);
	}
	
	@Override
	public String checkid(String id) {
		return session.selectOne(NS + ".checkid", id);
	}
	
	@Override
	public int getAmount() {
		return session.selectOne(NS + ".getAmount");
	}
	
	@Override
	public List<MemberDTO> getListpage(PageTO to) {
		RowBounds rb = new RowBounds(to.getStartNum()-1, to.getPerPage());
		return session.selectList(NS + ".getListpage", null, rb);
	}

	@Override
	public MemberDTO read(String mem_id) {
		return session.selectOne(NS + ".read", mem_id);
	}

	@Override
	public void update(MemberDTO dto) {
		session.update(NS + ".update", dto);
	}

	@Override
	public void delete(String mem_id) {
		session.delete(NS + ".delete", mem_id);	
	}



}
