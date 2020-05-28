package ko.co.goott.persistence;

import java.util.List;

import ko.co.goott.domain.EmpDTO;

public interface DAO {
	public List<EmpDTO> selectAll();
}
