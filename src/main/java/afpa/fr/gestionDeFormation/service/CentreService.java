package afpa.fr.gestionDeFormation.service;

import afpa.fr.gestionDeFormation.model.Centre;
import afpa.fr.gestionDeFormation.repository.CentreRepository;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CentreService {


    private final CentreRepository centreRepository;
    public List<Centre> getAll() {
        return centreRepository.findAll();

    }

    public Centre getOneById(Long id) {

        return centreRepository.findOneById(id);
    }


    public void save(Centre centre) { centreRepository.save(centre);
    }

    public void update(Centre centre) {centreRepository.save(centre);
    }

    public void delete(Long id) {centreRepository.deleteById(id);
    }
}
