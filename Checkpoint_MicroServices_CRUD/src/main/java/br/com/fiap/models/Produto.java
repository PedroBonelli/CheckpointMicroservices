package br.com.fiap.models;

public class Produto {
	private long id;
	private String nome;
	private String desc;
	private double preco;
	private String sku;
	private int quantidadeEstoque;
	private double volumeML;
	private String paisOrigem;
	
	public Produto() {
		
	}
	
	
	public Produto(long id, String nome, String desc, double preco, String sku, int quantidadeEstoque, double volume,
			String paisOrigem) {
		this.id = id;
		this.nome = nome;
		this.desc = desc;
		this.preco = preco;
		this.sku = sku;
		this.quantidadeEstoque = quantidadeEstoque;
		this.volumeML = volume;
		this.paisOrigem = paisOrigem;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getDesc() {
		return desc;
	}


	public void setDesc(String desc) {
		this.desc = desc;
	}


	public double getPreco() {
		return preco;
	}


	public void setPreco(double preco) {
		this.preco = preco;
	}


	public String getSku() {
		return sku;
	}


	public void setSku(String sku) {
		this.sku = sku;
	}


	public int getQuantidadeEstoque() {
		return quantidadeEstoque;
	}


	public void setQuantidadeEstoque(int quantidadeEstoque) {
		this.quantidadeEstoque = quantidadeEstoque;
	}


	public double getVolume() {
		return volumeML;
	}


	public void setVolume(double volume) {
		this.volumeML = volume;
	}


	public String getPaisOrigem() {
		return paisOrigem;
	}


	public void setPaisOrigem(String paisOrigem) {
		this.paisOrigem = paisOrigem;
	}

	public long getId() {
		return id;
	} 
	
	public void setId(long id) {
		this.id = id;
	}
	
}
