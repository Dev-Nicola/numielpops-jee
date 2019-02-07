package fr.imie;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonControler {
	
	ArrayList<Person> personList = new ArrayList<>();

    @RequestMapping("person")
    public String person(Person person, Model m) {
    	m.addAttribute("pers" , person);
			personList.add(person);
        m.addAttribute("personList", personList);
        return "form";
    }

}