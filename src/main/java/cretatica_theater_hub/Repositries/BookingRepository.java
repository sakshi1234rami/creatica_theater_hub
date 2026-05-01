package cretatica_theater_hub.Repositries;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import creatica_theater_hub.Model.BookingMasterModel;

@Repository
public interface BookingRepository extends MongoRepository<BookingMasterModel, String> {
	List<BookingMasterModel> findByUserEmail(String userEmail);
	List<BookingMasterModel> findByProgramId(String programId);
}
