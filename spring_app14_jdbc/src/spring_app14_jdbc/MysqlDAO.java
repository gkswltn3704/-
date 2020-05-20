package spring_app14_jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class MysqlDAO implements DAO{
	
	StringBuffer sb = new StringBuffer();
	
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	
	@Override
	public List<EmpDTO> selectAll() {
		sb.setLength(0);
		sb.append("select * from emp ");
		
		RowMapper<EmpDTO> rm = new RowMapper<EmpDTO>() {
			@Override
			public EmpDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new EmpDTO(rs.getInt(1), rs.getString(2), rs.getInt(6), rs.getInt(8));
			}
			
		};
		
		List<EmpDTO> list = jdbcTemplate.query(sb.toString(), rm);
		return list;
	}	//selectAll end

	@Override
	public EmpDTO selectOne(int no) {
		
		sb.setLength(0);
		sb.append("select * from emp ");
		sb.append("where empno = ? ");
		
		RowMapper<EmpDTO> rm = new RowMapper<EmpDTO>() {
			@Override
			public EmpDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new EmpDTO(rs.getInt(1), rs.getString(2), rs.getInt(6), rs.getInt(8));
			}
		};
		
		EmpDTO dto = jdbcTemplate.queryForObject(sb.toString(), rm, no);
		
		return dto;
	}

	@Override
	public void insertOne(EmpDTO dto) {
		// TODO Auto-generated method stub
		sb.setLength(0);
		sb.append("insert into dept ");
		sb.append("values (?, ?, ? ) ");
		
		int result = jdbcTemplate.update(sb.toString(), dto.getEmpno(), dto.getEname(), dto.getSal(), dto.getDeptno());
		
		System.out.println("insert 처리 결과 : "+ result);
	}

	@Override
	public void updateOne(EmpDTO dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteOne(int no) {
		// TODO Auto-generated method stub
		
	}
	
}
