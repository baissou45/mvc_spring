package mvc_spring.mvc_spring.interfaces;


import mvc_spring.mvc_spring.models.EtudiantModel;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface EtudiantRepository extends CrudRepository<EtudiantModel, String> {

    @Query("SELECT COUNT(e) FROM EtudiantModel as e")
    long countEtudiants();

}
