package fr.imie;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/person")
public class PersonServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String prenom = request.getParameter("firstname");
        String nom = request.getParameter("name");
        String email = request.getParameter("email");
        Person pers = new Person(prenom, nom, email);
        request.setAttribute("pers", pers);
        request.getRequestDispatcher("/person").forward(request, response);
        
        System.out.println(prenom);
    }

}