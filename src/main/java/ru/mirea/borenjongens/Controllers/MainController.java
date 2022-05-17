package ru.mirea.borenjongens.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import ru.mirea.borenjongens.Repository.UserRepo;
import ru.mirea.borenjongens.models.Product;
import ru.mirea.borenjongens.Repository.ProductRepo;
import ru.mirea.borenjongens.models.User;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    ProductRepo productRepo;

    @Autowired
    UserRepo userRepo;

    public User getAuthenticated() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if ((!(auth instanceof AnonymousAuthenticationToken)) && auth != null) {
            return (User) auth.getPrincipal();
        }
        return null;
    }

    @GetMapping("/")
    public String getMain(Model model) {
        if (getAuthenticated() != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        return "index";
    }

    @GetMapping("/about")
    public String getAbout(Model model) {
        if (getAuthenticated() != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        return "about";
    }

    @GetMapping("/contact")
    public String getContact(Model model) {
        if (getAuthenticated() != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        return "contact";
    }

    @GetMapping("/cart")
    public String getCart(Model model) {
        User user = getAuthenticated();
        if (user != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        model.addAttribute("products", user.getCart());
        return "product/cart";
    }

    @PostMapping("/cart/{id}/remove")
    public String deleteCart(@PathVariable Long id, Model model) {
        User user = getAuthenticated();
        if (user != null) {
            model.addAttribute("isAuth", true);
            List<Product> newCart = user.getCart();
            Product product = productRepo.findById(id).get();
            newCart.remove(product);
            user.setCart(newCart);
            userRepo.save(user);
        } else {
            model.addAttribute("isAuth", false);
        }

        model.addAttribute("products", user.getCart());
        return "product/cart";
    }

    @GetMapping("/favorite")
    public String getFavorite(Model model) {
        User user = getAuthenticated();
        if (user != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        model.addAttribute("products", user.getFavoriteList());
        return "product/favorite_list";
    }

    @PostMapping("/favorite/{id}/remove")
    public String deleteFavorite(@PathVariable Long id, Model model) {
        User user = getAuthenticated();
        if (user != null) {
            model.addAttribute("isAuth", true);
            List<Product> newFavoriteList = user.getFavoriteList();
            Product product = productRepo.findById(id).get();
            newFavoriteList.remove(product);
            user.setCart(newFavoriteList);
            userRepo.save(user);
        } else {
            model.addAttribute("isAuth", false);
        }

        model.addAttribute("products", user.getFavoriteList());
        return "product/favorite_list";
    }

}
