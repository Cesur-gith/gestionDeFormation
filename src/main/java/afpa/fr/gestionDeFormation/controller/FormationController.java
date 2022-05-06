package afpa.fr.gestionDeFormation.controller;

import afpa.fr.gestionDeFormation.model.Centre;
import afpa.fr.gestionDeFormation.model.Formation;
import afpa.fr.gestionDeFormation.service.FormationService;
import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class FormationController {


    private final FormationService formationService;

    @GetMapping ("/listFormation")
    public String listFormation (Model model){
        List<Formation>formation= formationService.getAll();
        model.addAttribute("formation", formation);
        return "listFormation";
    }

    @GetMapping("/detailsFormation")
    public String detail (Model model, @RequestParam Long id){
        Formation formation= formationService.getOneById(id);
        model.addAttribute("formation",formation);
        return "detailsFormation";
    }

    @GetMapping ("/formFormation")
    public String formFormation (@NotNull Model model  ) {
        Formation formation = new Formation();
        model.addAttribute("formation", formation);
        return "formFormation";
    }

    @PostMapping("add-formation")
    public String addFormation(@ModelAttribute Formation formation) {
        System.out.println("POST:" + formation);
        formationService.save(formation);
        return "redirect:/";
    }

    @GetMapping ("/editFormation")
    public String editCentre (Model model, @RequestParam Long id) {
        Formation  formation = formationService.getOneById(id);
        model.addAttribute( "formation",  formation);
        return "editFormation";
    }

    @PostMapping ("/envFormation")
    public String envFormation (@ModelAttribute Formation formation ) {
    formationService.update(formation);
    return "redirect:/listFormation";

    }



    @PostMapping("/deleteFormation")

    public String deleteFormation (@RequestParam Long id){
        formationService.delete(id);
        return "redirect:/";
    }
}
