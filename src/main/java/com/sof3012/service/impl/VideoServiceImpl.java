package com.sof3012.service.impl;

import com.sof3012.entity.Video;
import com.sof3012.repository.VideoRepository;
import com.sof3012.repository.impl.GenericRepositoryImpl;
import com.sof3012.repository.impl.VideoRepositoryImpl;
import com.sof3012.service.VideoService;
import com.sof3012.utils.HibernateUtil;
import jakarta.persistence.EntityManager;

import java.util.List;

public class VideoServiceImpl implements VideoService {

    private VideoRepository videoRepository;

    private EntityManager entityManager;

    public VideoServiceImpl() {
        this.entityManager = HibernateUtil.getEntityManager();
        this.videoRepository = new VideoRepositoryImpl(entityManager, Video.class);
    }

    @Override
    public Video create(Video video) {
        return null;
    }

    @Override
    public Video update(Video video) {
        return null;
    }

    @Override
    public Video delete(String href) {
        return null;
    }

    @Override
    public List<Video> getAllVideos() {
        return videoRepository.findAll(true);
    }
}
