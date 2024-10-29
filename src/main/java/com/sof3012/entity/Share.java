package com.sof3012.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Share implements Serializable {

    @Id
    private Long id;

    @ManyToOne
    @JoinColumn(name = "UserId")
    private User users;

    @ManyToOne
    @JoinColumn(name = "VideoId")
    private Video videos;

    private String email;

    @Temporal(TemporalType.DATE)
    private Date sharedDate;
}
