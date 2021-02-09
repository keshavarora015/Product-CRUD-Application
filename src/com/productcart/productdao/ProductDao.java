package com.productcart.productdao;

import java.util.List;

public interface ProductDao {
	List<Product>showAllProduct();
	public void addProduct(Product product);
	public void deleteProduct(int id);
	public void updateProduct(Product product);
	public Product getProductById(int id);
}
