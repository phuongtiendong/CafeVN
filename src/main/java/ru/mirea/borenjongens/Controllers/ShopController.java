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
import ru.mirea.borenjongens.Repository.CategoryRepo;
import ru.mirea.borenjongens.Repository.ProductRepo;
import ru.mirea.borenjongens.Repository.UserRepo;
import ru.mirea.borenjongens.Service.UserServiceImpl;
import ru.mirea.borenjongens.models.Category;
import ru.mirea.borenjongens.models.Product;
import ru.mirea.borenjongens.models.User;

import java.util.List;
import java.util.UUID;

@Controller
public class ShopController {

    @Autowired
    ProductRepo productRepo;

    @Autowired
    CategoryRepo categoryRepo;

    @Autowired
    UserServiceImpl userService;

    @Autowired
    UserRepo userRepo;

    public User getAuthenticated() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if ((!(auth instanceof AnonymousAuthenticationToken)) && auth != null) {
            return (User) auth.getPrincipal();
        }
        return null;
    }

    @GetMapping("/shop/products")
    public String getAllProducts(Model model) {
        if (getAuthenticated() != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        Iterable<Product> products = productRepo.findAll();
        model.addAttribute("products", products);
        Iterable<Category> categories = categoryRepo.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("selectCategoryTag", "all");
        return "/product/shop";
    }

    @GetMapping("/shop/product/{id}")
    public String getProductPage(@PathVariable Long id, Model model) {
        if (getAuthenticated() != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        Product product = productRepo.findById(id).get();
        model.addAttribute("product", product);
        return "/product/product_page";
    }

    @PostMapping("/shop/product/{id}/cart/add")
    public String addProductToCart(@PathVariable Long id, Model model) {
        User user = getAuthenticated();
        if (user != null) {
            model.addAttribute("isAuth", true);
            List<Product> cart = user.getCart();
            cart.add(productRepo.findById(id).get());
            user.setCart(cart);
            userRepo.save(user);
        } else model.addAttribute("isAuth", false);

        return getAllProducts(model);
    }

    @PostMapping("/shop/product/{id}/favorite/add")
    public String addFavoriteProduct(@PathVariable Long id, Model model) {
        User user = getAuthenticated();
        if (user != null) {
            model.addAttribute("isAuth", true);
            List<Product> favList = user.getFavoriteList();
            favList.add(productRepo.findById(id).get());
            user.setFavoriteList(favList);
            userRepo.save(user);
        } else model.addAttribute("isAuth", false);

        return getAllProducts(model);
    }

    @GetMapping("/shop/products/{categoryTag}")
    public String getAllProductsByCategory(@PathVariable String categoryTag, Model model) {
        if (getAuthenticated() != null) model.addAttribute("isAuth", true);
        else model.addAttribute("isAuth", false);

        Category category = categoryRepo.findById(categoryTag).get();
        Iterable<Category> categories = categoryRepo.findAll();
        model.addAttribute("categories", categories);
        model.addAttribute("products", category.getProducts());
        model.addAttribute("selectCategoryTag", category.getTag());

        return "/product/shop";
    }

    @GetMapping()
    public String deleteProduct(@PathVariable("id") Long id)
    {
        productRepo.deleteById(id);
        return "/product";
    }
}
