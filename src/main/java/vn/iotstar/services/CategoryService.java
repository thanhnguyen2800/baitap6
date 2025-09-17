package vn.iotstar.services;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;

import vn.iotstar.entity.Category;

public interface CategoryService {
	List<Category> findAll();

	List<Category> findByCategoryNameContaining(String name);

	Page<Category> findByCategoryNameContaining(String name, Pageable pageable);

	void deleteById(int id);

	Category save(Category category);
	
	List<Category> searchByName(String name);

	Optional<Category> findById(int id);

}
