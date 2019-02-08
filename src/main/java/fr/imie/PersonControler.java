package fr.imie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
// import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonControler {

    @Autowired
    private PersonRepository repository;
    
    @RequestMapping("person")
    public String person(Person person, Model m) {
    	
    	repository.save(person);
    	
   		List<Person> persons = repository.findAll();
   		
        m.addAttribute("persons", persons);
        return "person";
    }

}