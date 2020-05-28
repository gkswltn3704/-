package ko.co.goott.dao;

import java.util.List;

import ko.co.goott.dto.EmpDTO;

public interface DAO {
	public List<EmpDTO> selectAll();
	public EmpDTO selectOne(int no);
	public void insertOne(EmpDTO empdto);
	public void updateOne(EmpDTO empdto);
	public void deleteOne(int no);
}
