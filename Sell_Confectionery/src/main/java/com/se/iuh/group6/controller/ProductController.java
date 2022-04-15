package com.se.iuh.group6.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.se.iuh.group6.entity.Product;
import com.se.iuh.group6.service.ProductService;

@Controller
@RequestMapping("/products")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping("/home")
	public String showHome() {
		return "home";
	}
	
	@GetMapping("/list")
	public String listProduct(Model model) {
		List<Product> products = productService.getAllProduct();
		model.addAttribute("PRODUCT_LIST", products);
		
		return "list-product";
	}
	
	@PostMapping("/save")
	public String saveOrUpdateProduct(@ModelAttribute Product product) {
		productService.saveOrUpdateProduct(product);
		
		return "redirect:/products/list";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		model.addAttribute("title", "ADD PRODUCT");
		
		return "product-form";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("productId") int productId, Model model) {
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);
		model.addAttribute("title", "UPDATE PRODUCT");
		
		return "product-form";
	}
	
	@GetMapping("/delete")
	public String deleteProduct(@RequestParam("productId") int productId) {
		productService.deleteProduct(productId);
		
		return "redirect:/products/list";
	}
}
