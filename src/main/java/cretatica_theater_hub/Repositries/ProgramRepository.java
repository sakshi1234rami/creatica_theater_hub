package cretatica_theater_hub.Repositries;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import creatica_theater_hub.Model.ProgramMasterModel;

@Repository
public interface ProgramRepository extends MongoRepository<ProgramMasterModel, String> {
	List<ProgramMasterModel> findByBDCategory(String BDCategory);
	List<ProgramMasterModel> findByStatus(String status);
}
