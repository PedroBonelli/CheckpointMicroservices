package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import br.com.fiap.models.Produto;

public class ProdutoRepository {

	private Map<Long, Produto> repository;

	public ProdutoRepository() {
		repository = new HashMap<Long, Produto>();

		repository.put(1L, new Produto(1L, "Fireball",
				"Já imaginou encarar um dragão que acabou de comer um barril de whisky cheio de canela? esse é fireball - licor de whisky canadense com sabor natural de canela. Uma verdadeira explosão de sabores! perfeito para ser consumido puro, em shots extremamente gelados e nos mais variados cocktails. Experimente agora e 'ignite the night'",
				66.60, "W-001", 10, 1000, "Canadá"));
		repository.put(2L,
				new Produto(2L, "Jägermeister",
						"Jägermeister é um licor que transcende definições, convidando-o a uma sinfonia de sabores. Sua complexa mistura de 56 ingredientes, cuidadosamente selecionados, cria um elixir único e exótico. Experimente puro, bem gelado, e desvende a riqueza de aromas e sabores que explodem em seu paladar.", 120.00,
						"L-001", 8, 1000, "Alemanha"));
		repository.put(3L,
				new Produto(3L, "Jack Daniels No. 7",
						"Jack Daniel's Old No. 7 é um autêntico Tennessee Whiskey, feito com a mesma receita desde 1866. É suavizado em carvão de maple e maturado em barris de carvalho branco, resultando em um sabor equilibrado com notas doces e de carvalho. Produzido em Lynchburg, Tennessee, é exportado para mais de 165 países.", 66.60, "W-002", 5,
						1000, "Estados Unidos da América"));
		repository.put(4L,
				new Produto(4L, "Johnnie Walker Blue Label",
						"O Johnnie Walker Blue Label é um whisky escocês de edição limitada, feito com alguns dos barris mais raros do mundo. A nova garrafa apresenta um design contemporâneo que reflete o compromisso da marca com a herança e a modernidade. O whisky é envelhecido por pelo menos 21 anos e possui um sabor complexo e rico.\r\n"
						+ "\r\n"
						+ "", 1200.00, "W-003", 3,
						1000, "Reino Unido"));
		repository.put(5L, new Produto(5L, "Bailey's", "Baileys Original Irish Cream, lançado em Dublin em 1974, é um licor cremoso que conquistou o mundo. Combina puro creme de leite irlandês, whisky irlandês e sabores naturais de cacau e baunilha, criando uma bebida versátil e deliciosa.\r\n"
				+ "\r\n"
				+ "",
				90.00, "L-002", 12, 750, "Irlanda"));
		repository.put(6L, new Produto(6L, "Vodka Ciroc", "Ciroc transcende a definição de vodka, elevando-se à categoria de experiência extraordinária. Elaborada com uvas finas francesas, cuidadosamente selecionadas, Ciroc oferece um sabor suave e refrescante, com notas cítricas e de frutas, culminando em um acabamento elegante e aveludado.\r\n"
				+ "\r\n"
				+ "", 353.77, "VDK-001", 10, 1000, "França"));

	}

	public ArrayList<Produto> findAll() {
		return new ArrayList<Produto>(this.repository.values());
	}

	public Produto findById(long id) {
		return repository.get(id);
	}

	public void save(Produto produto) {
		Long newId = (long) (repository.size() + 1);
		produto.setId(newId);
		repository.put(newId, produto);
	}

	public void update(Produto produto) {
		repository.put(produto.getId(), produto);
	}

	public void deleteById(long id) {
		repository.remove(id);
	}

}
