package com.sof3012.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Video implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(nullable = false, length = 50)
    private String title;

    @Column(nullable = false, length = 200)
    private String description;

    @Column(nullable = false)
    private String poster;

    @Column(nullable = false, columnDefinition = "int default 0")
    private Integer views = 0;

    @Column(nullable = false, columnDefinition = "int default 0")
    private Integer likes = 0;

    @Column(nullable = false, columnDefinition = "int default 0")
    private Integer dislikes = 0;

    @Column(nullable = false)
    private String link;

    @Column(nullable = false)
    private String category;

    @Temporal(TemporalType.DATE)
    private Date date;

    @Column(columnDefinition = "BOOLEAN DEFAULT TRUE", nullable = false)
    private Boolean active = true;

    @ManyToOne
    @JoinColumn(name = "userId")
    private User user;

    @OneToMany(mappedBy = "video")
    private List<Event> events;

    @PrePersist
    protected void onCreate() {
        this.date = Date.valueOf(LocalDate.now());
    }

    public Video(String title, String description, String poster, String link, String category, User user) {
        this.title = title;
        this.description = description;
        this.poster = poster;
        this.link = link;
        this.category = category;
        this.user = user;
    }
}