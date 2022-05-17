package ru.mirea.borenjongens.Util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import ru.mirea.borenjongens.models.User;
import ru.mirea.borenjongens.Repository.UserRepo;

@Component
public class UserValidator implements Validator {

    @Autowired
    private UserRepo userRepo;

    @Override
    public boolean supports(Class<?> clazz) {
        return User.class.equals(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user = (User) target;
        if (userRepo.findByLogin(user.getLogin()) != null) {
            errors.rejectValue(
                    "login", "", "This login is already in use"
            );
        }
    }

}
