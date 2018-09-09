package br.usjt.arqdes16.ArqSoftDanNath.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	
	@RequestMapping("/home")
	public String execute(){
	System.out.println("chamou o controller home");
	return "home";
  }
}
