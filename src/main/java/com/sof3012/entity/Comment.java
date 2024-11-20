package com.sof3012.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String content;

    @Temporal(TemporalType.DATE)
    private LocalDate date;

    @Column(columnDefinition = "BIT DEFAULT 1", nullable = false)
    private Boolean active;

    @ManyToOne
    @JoinColumn(name = "userId")
    private User user;

    @ManyToOne
    @JoinColumn(name = "videoId")
    private Video video;

    @PrePersist
    protected void onCreate() {
        this.date = LocalDate.now();
    }

    public Comment(String content, User user, Video video) {
        this.content = content;
        this.user = user;
        this.video = video;
    }
}
