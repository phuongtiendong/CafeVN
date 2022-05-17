package ru.mirea.borenjongens.Repository;

import org.hibernate.annotations.SQLUpdate;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ru.mirea.borenjongens.models.User;

import java.util.Collection;
import java.util.UUID;

@Repository
public interface UserRepo extends CrudRepository<User, Long> {

    User findByLogin(String login);
}
