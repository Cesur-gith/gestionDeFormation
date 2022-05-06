package afpa.fr.gestionDeFormation.controller;

import afpa.fr.gestionDeFormation.model.Centre;
import afpa.fr.gestionDeFormation.service.CentreService;
import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Entity;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class CentreController {


    private final CentreService centreService;

    @GetMapping ("/listCentre")
    public String listCentre (Model model){
        List<Centre> centre= centreService.getAll();
        model.addAttribute("centre", centre);
        return "listCentre";
    }

    @GetMapping("/detailsCentre")
    public String detail (Model model, @RequestParam Long id){
        Centre centre = centreService.getOneById(id);
        model.addAttribute("centre",centre);
        return "detailsCentre";
    }

    @GetMapping ("/formCentre")
    public String formCentre (@NotNull Model model  ) {
        Centre centre = new Centre();
        model.addAttribute("centre", centre);
        return "formCentre";
    }

    @PostMapping("/add-centre")
    public String addCentre(@ModelAttribute Centre centre) {
        System.out.println("POST:" + centre);
        centreService.save(centre);
        return "redirect:/";
    }

    @GetMapping ("/editCentre")
    public String editCentre (Model model, @RequestParam Long id) {
        Centre centre = centreService.getOneById(id);
        model.addAttribute( "centre",  centre);
        return "editCentre";
    }

    @PostMapping("/envInfo")
    public String envInfo(@ModelAttribute Centre centre ) {
        centreService.update(centre);
        return "redirect:/";
    }

    @PostMapping ("/deleteCentre")
    public String deleteCentre (@RequestParam Long id)  {
        centreService.delete(id);
        return "redirect:/";
    }


}
