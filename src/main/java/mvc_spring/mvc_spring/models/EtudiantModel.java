package mvc_spring.mvc_spring.models;


import jakarta.persistence.*;

import java.util.HashSet;
import java.util.Set;

@Entity    //Indique à hibernate que cette classe correspondra à une table dans la base de données
@Table(name="etudiants")		//Indique à Hibernate la table correspondant au modèle
public class EtudiantModel {

    @Id
    @Column(name = "numetudiant", nullable = false)
    String numEtudiant;

    @Column(name="nometudiant")
    String nomEtudiant;

    @Column(name="prenometudiant")
    String prenomEtudiant;

    @Column(name="mailetudiant")
    String mailEtudiant;

    @Column(name="annee")
    int annee;

    @Column(name="codediplome")
    int codeDiplome;

    @Column(name="password")
    String password;

    public int getAnnee() {
        return annee;
    }

    public void setAnnee(int annee) {
        this.annee = annee;
    }

    public int getCodeDiplome() {
        return codeDiplome;
    }

    public void setCodeDiplome(int codeDiplome) {
        this.codeDiplome = codeDiplome;
    }

    public String getMailEtudiant() {
        return mailEtudiant;
    }

    public void setMailEtudiant(String mailetudiant) {
        this.mailEtudiant = mailetudiant;
    }

    public String getNomEtudiant() {
        return nomEtudiant;
    }

    public void setNomEtudiant(String nometudiant) {
        this.nomEtudiant = nometudiant;
    }

    public String getNumEtudiant() {
        return numEtudiant;
    }

    public void setNumEtudiant(String numetudiant) {
        this.numEtudiant = numetudiant;
    }

    public String getPrenomEtudiant() {
        return prenomEtudiant;
    }

    public void setPrenomEtudiant(String prenometudiant) {
        this.prenomEtudiant = prenometudiant;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}