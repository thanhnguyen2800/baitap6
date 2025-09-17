package vn.iotstar.repository;
import vn.iotstar.entity.Category;
import vn.iotstar.entity.Video;

import org.springframework.data.domain.Pageable;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface CategoryRepository extends JpaRepository<Category, Integer> {

	// Tìm Kiếm theo nội dung tên

	List<Category> findByCategoryNameContaining(String name);

	// Tìm kiếm và Phân trang

	Page<Category> findByCategoryNameContaining(String name, Pageable pageable);
	
	@Repository
	public interface VideoRepository extends JpaRepository<Video, Integer> {
	    List<Video> findByTitleContaining(String keyword);
	}

}
