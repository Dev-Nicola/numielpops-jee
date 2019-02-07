package fr.imie;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/person")
public class PersonServlet extends HttpServlet {

	ArrayList<Person> personList = new ArrayList<>();
	
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	
    	String prenom = request.getParameter("firstname");
        String nom = request.getParameter("lastname");
        String email = request.getParameter("email");
        Person pers = new Person(prenom, nom, email);
        personList.add(pers);
        request.setAttribute("personList", personList);
        request.getRequestDispatcher("/form.jsp").forward(request, response);
        
        // request.setAttribute("pers", pers);
    }

}