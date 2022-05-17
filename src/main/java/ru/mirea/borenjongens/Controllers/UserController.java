package ru.mirea.borenjongens.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import ru.mirea.borenjongens.Repository.UserRepo;
import ru.mirea.borenjongens.Service.UserServiceImpl;
import ru.mirea.borenjongens.models.User;

@Controller
public class UserController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    UserServiceImpl userService;

    public User getAuthenticated() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if ((!(auth instanceof AnonymousAuthenticationToken)) && auth != null) {
            return (User) auth.getPrincipal();
        }
        return null;
    }

    @GetMapping("/myPage")
    public String getMyPage(Model model) {
        User user = getAuthenticated();
        if (user != null) {
            model.addAttribute("isAuth", true);
            model.addAttribute("user", user);
        } else {
            model.addAttribute("isAuth", false);
            return "page404";
        }

        return "/page/myPage";
    }

    @GetMapping("/myPage/edit")
    public String editMyPage(Model model) {
        User user = getAuthenticated();
        if (user != null) {
            model.addAttribute("isAuth", true);
            model.addAttribute("user", user);
        } else {
            model.addAttribute("isAuth", false);
            return "page404";
        }

        return "/page/editMyPage";
    }

    @PostMapping("/myPage/edit")
    public String editMyPage(@ModelAttribute User newUser, Model model) {
        User user = getAuthenticated();
        if (user != null) {
            model.addAttribute("isAuth", true);
        } else {
            model.addAttribute("isAuth", false);
            return "page404";
        }
        user.setName(newUser.getName());
        user.setSurname(newUser.getSurname());
        user.setPatronymic(newUser.getPatronymic());
        user.setEmail(newUser.getEmail());
        user.setPhone(newUser.getPhone());
        user.setAddress(newUser.getAddress());
        userService.update(user);
        model.addAttribute("user", user);
        return "/page/myPage";
    }
}
