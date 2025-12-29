package br.com.struts2.action;

import com.opensymphony.xwork2.ActionSupport;

public class HelloAction extends ActionSupport {
    private static final long serialVersionUID = 1L;
    
	private String username;
    private int age;


    @Override
    public String execute() {
        if(age < 18 && age != 0) {
        	System.out.println("DEBUG: age = " + age);
        	return "error_menor";
        	
        }
        System.out.println("DEBUG: O Struts chamou a Action!"
        		+ " Nome recebido: " + username
        		+ " Idade recebida: " + age);
        
        return SUCCESS; // Retorna a string "success"
    }


    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}
	
}