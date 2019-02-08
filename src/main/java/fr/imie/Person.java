package fr.imie;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Person {

    @Id @GeneratedValue
    private Integer id;

    private String firstname;

    private String lastname;
    
    private String email;

    public Person() {
    }

    public Person(String firstname, String lastname, String email) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
    }

    public String getPrenom() {
        return firstname;
    }

    public void setPrenom(String firstname) {
        this.firstname = firstname;
    }

    public String getNom() {
        return lastname;
    }

    public void setNom(String lastname) {
        this.lastname = lastname;
    }
    
    public String getEmail() {
    	return email;
    }
    
    public void setEmail(String email) {
    	this.email = email;
    }

}