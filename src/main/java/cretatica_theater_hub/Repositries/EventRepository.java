package cretatica_theater_hub.Repositries;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import creatica_theater_hub.Model.EventMasterModel;

@Repository
public interface EventRepository extends MongoRepository<EventMasterModel, String> {

}
