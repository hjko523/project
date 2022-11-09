package main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SeraController {



	
	/* 메뉴 Controller */
	
	@RequestMapping("/cafeSera.do")
	public String cafeSera() {
		
		return "cafeSera/sera";
	}

	@RequestMapping("/cafeSeraMenu.do")
	public String cafeSeraMenu() {
		
		return "/cafeSera/menu";
	}
	
	@RequestMapping("/cafeSeraMembership.do")
	public String cafeSeraMebrship() {
		
		return "/cafeSera/membership";
	}
		
	@RequestMapping("/cafeSeraLocation.do")
	public String cafeSeraLocation() {
		
		return "/cafeSera/location";
	}
	
}	