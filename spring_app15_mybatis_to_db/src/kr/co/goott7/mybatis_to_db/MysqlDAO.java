package kr.co.goott7.mybatis_to_db;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class MysqlDAO implements DAO {
	
	ConnectionManager cm;
	
	public void setCm(ConnectionManager cm) {
		this.cm = cm;
	}

	
	@Override
	public List<DeptDTO> selectAll() {
		/*
		SqlSessionFactory factory = cm.getFactory();
		
		SqlSession ss = factory.openSession(true);
		
		List<DeptDTO> list = ss.selectList("selectAll");
		
		return list;
		*/
		
		// method chaining 방식
		return cm.getFactory().openSession(true).selectList("selectAll");
	}

	@Override
	public DeptDTO selectOne(int no) {
		// TODO Auto-generated method stub
		return cm.getFactory().openSession(true).selectOne("selectOneByDeptno", no);		//사용자가 입력할 int 값도 같이 보내기
	}

	@Override
	public void insertOne(DeptDTO dto) {
		// TODO Auto-generated method stub
		cm.getFactory().openSession(true).insert("insertOneByDept", dto);
	}

	@Override
	public void updateOne(DeptDTO dto) {
		// TODO Auto-generated method stub
		cm.getFactory().openSession(true).update("updateOneByDept", dto);
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		cm.getFactory().openSession(true).update("deleteOneByDept", no);
	}

}
