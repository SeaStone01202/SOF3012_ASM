package com.sof3012.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "[User]")
public class User implements Serializable {

    @Id
    private String id;

    @Column(name = "[fullname]")
    private String fullname;

    private String password;

    @Column(unique = true)
    private String email;

    private Boolean admin;

    @OneToMany(mappedBy = "user")
    private List<Favorite> favorites;
}
