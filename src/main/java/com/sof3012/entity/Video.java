package com.sof3012.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Video implements Serializable {

    @Id
    private String id;

    private String title;

    private String poster;

    private Integer views;

    private String description;

    private Boolean active;

    @OneToMany(mappedBy = "video")
    private List<Favorite> favorites;
}
