package mvc_spring.mvc_spring.models;


import jakarta.persistence.*;

@Entity    //Indique à hibernate que cette classe correspondra à une table dans la base de données
@Table(name="diplomes")		//Indique à Hibernate la table correspondant au modèle
public class DiplomeModel {

    @Id
    @Column(name = "codediplome", nullable = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int codeDiplome;

    @Column(name="nomdiplome")
    String nomDiplome;

    @Column(name="codeu")
    int codeU;

    @Column(name="niveaudiplome")
    String niveauDiplome;

    public int getCodeDiplome() {
        return codeDiplome;
    }

    public void setCodeDiplome(int codeDiplome) {
        this.codeDiplome = codeDiplome;
    }

    public String getNiveauDiplome() {
        return niveauDiplome;
    }

    public void setNiveauDiplome(String niveauDiplome) {
        this.niveauDiplome = niveauDiplome;
    }

    public String getNomDiplome() {
        return nomDiplome;
    }

    public void setNomDiplome(String nomDiplome) {
        this.nomDiplome = nomDiplome;
    }

    public int getCodeU() {
        return codeU;
    }

    public void setCodeU(int codeU) {
        this.codeU = codeU;
    }
}