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
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false, length = 50, unique = true)
    private String username;

    @Column(nullable = false, length = 50)
    private String password;

    @Column(name = "[fullname]", nullable = true, columnDefinition = "NVARCHAR(50)")
    private String fullname;

    @Column(unique = true, nullable = false, length = 50)
    private String email;

    @Column(columnDefinition = "BIT DEFAULT 0", nullable = false)
    private Boolean isAdmin = false;

    @Column(columnDefinition = "BIT DEFAULT 1", nullable = false)
    private Boolean active = true;

    @OneToMany(mappedBy = "user")
    private List<Video> videos;

    @OneToMany(mappedBy = "user")
    private List<Event> events;

    public User(String username, String password, String fullname, String email) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
    }
}
