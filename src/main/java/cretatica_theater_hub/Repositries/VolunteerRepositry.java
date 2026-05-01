package cretatica_theater_hub.Repositries;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import creatica_theater_hub.Model.VolunteerMasterModel;

@Repository
public interface VolunteerRepositry extends MongoRepository<VolunteerMasterModel, String>{

}
