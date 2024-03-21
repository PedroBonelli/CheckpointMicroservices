package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.fiap.models.Produto;
import br.com.fiap.repository.ProdutoRepository;

@Controller
public class ProdutoController {
	
	ProdutoRepository repository = new ProdutoRepository();
	
	@RequestMapping(value = "/produtos", method = RequestMethod.GET)
	public String produtos(Model model) {
		
		model.addAttribute("produtos", repository.findAll());
		return "index";
	}
	
	@RequestMapping(value = "/produtos/{id}", method = RequestMethod.GET)
	public String produtoDetalhe(@PathVariable("id") long id,Model model) {
		
		model.addAttribute("produto", repository.findById(id));
		return "produto-detalhe";
	}
	
	
	@RequestMapping(value = "/produtos/new", method = RequestMethod.GET)
	public String openSave(){
		return "produto-novo";
	}
	
	@RequestMapping(value = "/produtos/new", method = RequestMethod.POST)
	public String save(Produto produto) {
		
		repository.save(produto);
		return "produto-novo-sucesso";
	}
	
	@RequestMapping(value = "/produtos/update/{id}", method = RequestMethod.GET)
	public String openUpdate(Model model, @PathVariable("id") long id) {
		
		model.addAttribute("produto", repository.findById(id));
		return "produto-editar";
	}
	
	
	@RequestMapping(value = "/produtos/update", method = RequestMethod.POST)
	public String update(Model model, Produto produto) {
		
		repository.update(produto);
		model.addAttribute("produtos", repository.findAll());
		return "index";
	}
	
	@RequestMapping(value = "/produtos/delete/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") long id, Model model) {
		
		repository.deleteById(id);
		model.addAttribute("produtos", repository.findAll());
		return "redirect:/produtos";
	}
	
	
}
