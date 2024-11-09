package com.sof3012.repository.impl;

import com.sof3012.entity.Video;
import com.sof3012.repository.VideoRepository;
import jakarta.persistence.EntityManager;

import java.util.List;

public class VideoRepositoryImpl extends GenericRepositoryImpl<Video, Integer> implements VideoRepository {

    public VideoRepositoryImpl(EntityManager em) {
        super(em);
    }

    @Override
    public Video create(Video entity) {
        return null;
    }

    @Override
    public Video update(Video entity) {
        return null;
    }

    @Override
    public Video delete(Video entity) {
        return null;
    }

    @Override
    public Video findById(Integer idEntity) {
        return null;
    }

    @Override
    public List<Video> findAll() {
        return List.of();
    }

    @Override
    public List<Video> findAll(int pageNumber, int pageSize) {
        return List.of();
    }

    @Override
    public Video findByTitle(String title) {
        return null;
    }
}
