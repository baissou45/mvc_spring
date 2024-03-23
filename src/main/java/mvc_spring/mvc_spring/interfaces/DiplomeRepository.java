package mvc_spring.mvc_spring.interfaces;


import mvc_spring.mvc_spring.models.DiplomeModel;
import org.springframework.data.repository.CrudRepository;


public interface DiplomeRepository extends CrudRepository<DiplomeModel, Integer> {

}
