package com.productcart.service;

import java.util.List;

import com.productcart.productdao.Product;

public interface ProductService {
	List<Product>showAllProduct();
	public void addProduct(Product product);
	public void deleteProduct(int id);
	public void updateProduct(Product product);
	public Product getProductById(int id);

}
