package ru.mirea.borenjongens.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.mirea.borenjongens.models.Category;

import java.util.List;

@Repository
public interface CategoryRepo extends CrudRepository<Category, String> {
}
