package ko.co.goott.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import ko.co.goott.dto.EmpDTO;

public class MysqlDAO implements DAO {

	SqlSession ss;
	
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	
	@Override
	public List<EmpDTO> selectAll() {
		// TODO Auto-generated method stub
		return ss.selectList("selectAllEmp");
	}

	@Override
	public EmpDTO selectOne(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertOne(EmpDTO empdto) {
		// TODO Auto-generated method stub
		ss.insert("insertOneEmp", empdto);
	}

	@Override
	public void updateOne(EmpDTO empdto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}
	
}
