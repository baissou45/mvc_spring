package mvc_spring.mvc_spring.controllers;

import mvc_spring.mvc_spring.interfaces.DiplomeRepository;
import mvc_spring.mvc_spring.interfaces.EtudiantRepository;
import mvc_spring.mvc_spring.models.EtudiantModel;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AuthController {

    @Autowired // Récupérer le Bean userRepository auto-généré par Spring
    private EtudiantRepository etudiantRepository;
    @Autowired
    private DiplomeRepository diplomeRepository;

    @GetMapping({"/test"})
    public ModelAndView test() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("dashboard");
        return mav;
    }

    @GetMapping({"/login"})
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("login");
        return mav;
    }

    /*if (BCrypt.checkpw(candidate, hashed))
            System.out.println("It matches");
    else
        System.out.println("It does not match");*/

    @GetMapping({"/register"})
    public ModelAndView register() {
        ModelAndView mav = new ModelAndView();
        mav.addObject("diplomes", diplomeRepository.findAll());
        mav.setViewName("register");
        return mav;
    }

    @PostMapping({"/register"})
    public ModelAndView post_register(
            @RequestParam(value="nom", defaultValue="nom manquant") String nomEtudiant,
            @RequestParam(value="prenom", defaultValue="prenom manquant") String prenomEtudiant,
            @RequestParam(value="email", defaultValue="mail manquant") String mailEtudiant,
            @RequestParam(value="annee", defaultValue="1") int anneeEtudiant,
            @RequestParam(value="codeDiplome", defaultValue="1") int codeDiplome,
            @RequestParam(value="password") String password
    ) {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("login");

        EtudiantModel etudiant = new EtudiantModel();
        etudiant.setNomEtudiant(nomEtudiant);
        etudiant.setPrenomEtudiant(prenomEtudiant);
        etudiant.setMailEtudiant(mailEtudiant);
        etudiant.setAnnee(anneeEtudiant);
        etudiant.setCodeDiplome(codeDiplome);

        String hashed = BCrypt.hashpw(password, BCrypt.gensalt());
        etudiant.setPassword(hashed);

        var nbr = etudiantRepository.countEtudiants();
        String num = "E" + String.format("%03d", etudiantRepository.countEtudiants() + 1);
        etudiant.setNumEtudiant(num);

        etudiantRepository.save(etudiant);

        return mav;
    }

}
