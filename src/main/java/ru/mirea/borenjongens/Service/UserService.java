package ru.mirea.borenjongens.Service;

import ru.mirea.borenjongens.models.User;

import java.util.List;
import java.util.UUID;

public interface UserService {
    List<User> getAll();
    User get(Long id);
    void create(User user);
    void update(User user);
}
