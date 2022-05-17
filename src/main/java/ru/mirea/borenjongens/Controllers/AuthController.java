package ru.mirea.borenjongens.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ru.mirea.borenjongens.Service.UserServiceImpl;
import ru.mirea.borenjongens.Util.UserValidator;
import ru.mirea.borenjongens.models.User;
import ru.mirea.borenjongens.Repository.UserRepo;

@Controller
public class AuthController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    UserValidator userValidator;

    @Autowired
    UserServiceImpl userService;

    @GetMapping("/signup")
    public String getSignUp(Model model) {
        model.addAttribute("user", new User());
        return "/auth/sign_up";
    }


    @PostMapping("/signup")
    public String signUp(@ModelAttribute User user, BindingResult result) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "/auth/sign_up";
        }
        userService.create(user);
        return "redirect:/";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(name = "error", required = false) Boolean error, Model model) {
        model.addAttribute("error", Boolean.TRUE.equals(error));
        return "/auth/sign_in";
    }
}
