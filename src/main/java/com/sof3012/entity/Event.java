package com.sof3012.entity;

import com.sof3012.constant.ConstantEvent;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Date;
import java.time.LocalDate;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Event implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private ConstantEvent eventName;

    @Column(nullable = true, length = 100)
    private String details;

    @Temporal(TemporalType.DATE)
    private Date date;

    @Column(columnDefinition = "BOOLEAN DEFAULT TRUE", nullable = false)
    private Boolean active = true;

    @ManyToOne
    @JoinColumn(name = "userId")
    private User user;

    @ManyToOne
    @JoinColumn(name = "videoId")
    private Video video;

    @PrePersist
    protected void onCreate() {
        this.date = Date.valueOf(LocalDate.now());
    }

    public Event(ConstantEvent eventName, String details, User user, Video video) {
        this.eventName = eventName;
        this.details = details;
        this.user = user;
        this.video = video;
    }
}
