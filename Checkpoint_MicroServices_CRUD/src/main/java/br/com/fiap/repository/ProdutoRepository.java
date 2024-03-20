package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import br.com.fiap.models.Produto;

public class ProdutoRepository {
	
	private Map<Long, Produto> repository;
	
	public ProdutoRepository() {
		repository =  new HashMap<Long, Produto>();
		
		repository.put(1L, new Produto(1L , "Fireball", "Licor de Whiskey com canela Fireball, produzido no Canadá", 66.60, "W-001", 10, 1000, "Canadá"));
		repository.put(2L, new Produto(2L , "Jägermeister", "Licor de ervas finas, combinando sabores adocicados, amargos e principalmente herbais", 120.00, "L-001", 8, 1000, "Alemanha"));
		repository.put(3L, new Produto(3L , "Jack Daniels No7", "Tennesee whiskey, produzido a partir de milho em barris bourbon queimados", 66.60, "W-002", 5, 1000, "Estados Unidos da América"));
		repository.put(4L, new Produto(4L , "Johnnie Walker Blue Label", "Blended Scotch Whiskey da Johnnie Walker, um clássico do mundo do whisky", 1200.00, "W-003", 3, 1000, "Reino Unido"));
		repository.put(5L, new Produto(5L , "Bailey's", "Licor de café com Irish cream adicionado, um clássico Irlandês", 90.00, "L-002", 12, 750, "Irlanda"));
	}
	
	public ArrayList<Produto> findAll(){
		return new ArrayList<Produto>(this.repository.values());
	}
	
	public Produto findById(long id) {
		return repository.get(id);
	}
	
	public void save(Produto produto) {
		Long newId = (long)(repository.size()+1);
		produto.setId(newId);
		repository.put(newId, produto);
	}
	
	public void update(Produto produto) {
		repository.put(produto.getId(), produto);
	}

	
}
