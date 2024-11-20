package com.sof3012.repository.impl;

import com.sof3012.entity.Video;
import com.sof3012.repository.VideoRepository;
import jakarta.persistence.EntityManager;

public class VideoRepositoryImpl extends GenericRepositoryImpl<Video, Integer> implements VideoRepository {

    public VideoRepositoryImpl(EntityManager em, Class<Video> entityClass) {
        super(em, entityClass);
    }

    @Override
    public Video findByTitle(String title) {
        String sql = "SELECT o FROM Video o WHERE o.title LIKE ?1";
        return super.findOne(sql, "%" + title + "%");
    }

    @Override
    public Video findByLink(String link) {
        String sql = "SELECT o FROM Video o WHERE o.link = ?1";
        return super.findOne(sql, link);
    }
}
