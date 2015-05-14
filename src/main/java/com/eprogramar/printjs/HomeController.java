package com.eprogramar.printjs;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		System.out.println( "home()..." );
		return "home";
	}
	
	@RequestMapping(value = "/imprimir", method = RequestMethod.GET)
	public String imprimir(Model model) {
		System.out.println( "print()..." );
		
		List<Cliente> lista = Arrays.asList( new Cliente(1, "AAAAAAA", "123456789"),
											 new Cliente(2, "BBBBBBBBBBBB", "987654321"),
											 new Cliente(3, "CCCCCCCCCCCCCC", "147258369"));
		
		model.addAttribute("lista", lista);
		System.out.println( lista );
		
		return "print";
	}	
	
}
