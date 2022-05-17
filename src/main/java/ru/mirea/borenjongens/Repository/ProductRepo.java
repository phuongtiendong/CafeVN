package ru.mirea.borenjongens.Repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import ru.mirea.borenjongens.models.Product;
import ru.mirea.borenjongens.models.User;

import java.util.UUID;

@Repository
public interface ProductRepo extends CrudRepository<Product, Long> {
}
