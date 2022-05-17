package ru.mirea.borenjongens.models;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "categories")
public class Category {

    @Id
    private String tag;

    @Column(nullable = false, columnDefinition = "text")
    private String name;

    @Column(nullable = false, columnDefinition = "text")
    private String description;

    private Integer countOfProducts;

    @OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
    private List<Product> products;

    public Category() {
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getCountOfProducts() {
        return countOfProducts;
    }

    public void setCountOfProducts(Integer countOfProducts) {
        this.countOfProducts = countOfProducts;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
