package br.com.struts2.enums;

public enum OperationCalculator {
	SOMA(1, "+"),
	SUBTRACAO(2, "-"),
	MULTIPLICACAO(3, "*"),
	DIVISAO(4, "/");
	
	private final int codigo;
	private final String descricao;
	
	private OperationCalculator(int codigo, String descricao) {
		this.codigo = codigo;
		this.descricao = descricao;
	}

	public int getCodigo() {
		return codigo;
	}

	public String getDescricao() {
		return descricao;
	}
	
	public static OperationCalculator toEnum(Integer codigo) {
		if(codigo == null) {
			return null;
		}
		
		for(OperationCalculator x : OperationCalculator.values()) {
			if(codigo.equals(x.getCodigo())) {
				return x;
			}
		}
		
		throw new IllegalArgumentException("Id inválido: " + codigo);
	}
	
	public boolean isSoma() {
		return this == SOMA;
	}
	
	public boolean isSubtracao() {
		return this == SUBTRACAO;
	}
	
	public boolean isMultiplicaaco() {
		return this == MULTIPLICACAO;
	}
	
	public boolean isDivisao() {
		return this == DIVISAO;
	}
	
}
