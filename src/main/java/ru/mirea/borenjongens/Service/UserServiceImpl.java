package ru.mirea.borenjongens.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.mirea.borenjongens.models.User;
import ru.mirea.borenjongens.Repository.UserRepo;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional(readOnly = true)
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public List<User> getAll() {
        return (List<User>) userRepo.findAll();
    }

    @Override
    public User get(Long id) {
        return userRepo.findById(id).get();
    }

    @Override
    @Transactional
    public void create(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepo.save(user);
    }

    @Override
    @Transactional
    public void update(User user) {
        userRepo.save(user);
    }
}
