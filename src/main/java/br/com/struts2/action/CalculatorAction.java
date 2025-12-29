package br.com.struts2.action;

import com.opensymphony.xwork2.ActionSupport;

import br.com.struts2.enums.OperationCalculator;

public class CalculatorAction extends ActionSupport {	
	private static final long serialVersionUID = 1L;
	
	private String result;
	private double number1;
	private double number2;
	private OperationCalculator operationSelected;
	
	
	public String execute() {
		
		if (operationSelected == null) {
            addActionError("Selecione uma operação.");
            return INPUT;
        }
		
		double valorCalculado = 0;

        switch (operationSelected) {
            case SOMA:
                valorCalculado = number1 + number2;
                break;
            case SUBTRACAO:
                valorCalculado = number1 - number2;
                break;
            case MULTIPLICACAO:
                valorCalculado = number1 * number2;
                break;
            case DIVISAO:
                if (number2 == 0) {
                    addFieldError("number2", "Não é possível dividir por zero.");
                    return INPUT;
                }
                valorCalculado = number1 / number2;
                break;
        }

        this.result = String.valueOf(valorCalculado);
        
		return SUCCESS;
	}
	
	public OperationCalculator[] getAvailableOperation() {
        return OperationCalculator.values();
    }
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
	public double getNumber1() {
		return number1;
	}
	
	public void setNumber1(double number1) {
		this.number1 = number1;
	}
	
	public double getNumber2() {
		return number2;
	}
	
	public void setNumber2(double number2) {
		this.number2 = number2;
	}

	public OperationCalculator getOperationSelected() {
		return operationSelected;
	}

	public void setOperationSelected(OperationCalculator operationSelected) {
		this.operationSelected = operationSelected;
	}
	
}
