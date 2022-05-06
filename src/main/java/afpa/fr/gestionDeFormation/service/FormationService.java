package afpa.fr.gestionDeFormation.service;

import afpa.fr.gestionDeFormation.model.Formation;
import afpa.fr.gestionDeFormation.repository.FormationRepository;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class FormationService {


    private final FormationRepository formationRepository;
    public List<Formation> getAll() {
        return formationRepository.findAll();
    }

    public Formation getOneById(Long id) { return formationRepository.findOneById(id);
    }

    public void save(Formation formation) { formationRepository.save(formation);
    }

    public void delete(Long id) { formationRepository.deleteById(id);
    }

    public void update(Formation formation) {formationRepository.save(formation);
    }
}
