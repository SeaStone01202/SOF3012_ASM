package com.sof3012.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Share {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String email;

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

    public Share(String email, User user, Video video) {
        this.email = email;
        this.user = user;
        this.video = video;
    }
}
