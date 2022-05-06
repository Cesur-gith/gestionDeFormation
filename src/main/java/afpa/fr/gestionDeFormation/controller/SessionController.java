package afpa.fr.gestionDeFormation.controller;

import afpa.fr.gestionDeFormation.model.Formation;
import afpa.fr.gestionDeFormation.model.Session;
import afpa.fr.gestionDeFormation.service.SessionService;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequiredArgsConstructor
@Slf4j
public class SessionController {

    private final SessionService sessionService;

    @GetMapping ("/detailsSession")
    public String detail (Model model, @RequestParam Long id){
        Session session= sessionService.getOneById(id);
        model.addAttribute("session",session);
        return "detailsFormation";
    }


}
