package br.com.struts2.action;

import com.opensymphony.xwork2.ActionSupport;

public class IMCAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	
	private Double peso;
	private Double altura;
	
	private Double imc;
	private String grau;
	
	@Override
	public String execute() {
		if(peso != null && altura != null && altura != 0) {
			imc = peso / (altura * altura);
			
			if(imc < 18.5) {
				grau = "Abaixo do peso";
			}
			
			else if(imc < 24.9) {
				grau = "Peso normal";
			}
			
			else if(imc < 29.9) {
				grau = "Sobrepeso";
			}
			
			else {
				grau = "Obesidade";
			}
			
			return SUCCESS;
		}
		
		return INPUT;
	}

	public Double getPeso() {
		return peso;
	}

	public void setPeso(Double peso) {
		this.peso = peso;
	}

	public Double getAltura() {
		return altura;
	}

	public void setAltura(Double altura) {
		this.altura = altura;
	}

	public Double getImc() {
		return imc;
	}

	public void setImc(Double imc) {
		this.imc = imc;
	}

	public String getGrau() {
		return grau;
	}

	public void setGrau(String grau) {
		this.grau = grau;
	}

}