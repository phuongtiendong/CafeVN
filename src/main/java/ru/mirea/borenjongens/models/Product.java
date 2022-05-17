package ru.mirea.borenjongens.models;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;

@Entity
@Table(name = "products")
public class Product {

    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false, columnDefinition = "text")
    private String name;

    @Column(nullable = false)
    private double price;

    @Column(nullable = false)
    private Integer rating;

    @ManyToOne()
    @JoinColumn(name = "category_tag")
    private Category category;

    @ManyToMany(mappedBy = "cart", fetch = FetchType.EAGER)
    private List<User> userCart;

    @ManyToMany(mappedBy = "favoriteList", fetch = FetchType.EAGER)
    private List<User> userFavoriteList;

    @Column(nullable = false)
    private String description;

    public Product() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public List<User> getUserCart() {
        return userCart;
    }

    public void setUserCart(List<User> userCart) {
        this.userCart = userCart;
    }

    public List<User> getUserFavoriteList() {
        return userFavoriteList;
    }

    public void setUserFavoriteList(List<User> userFavoriteList) {
        this.userFavoriteList = userFavoriteList;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
