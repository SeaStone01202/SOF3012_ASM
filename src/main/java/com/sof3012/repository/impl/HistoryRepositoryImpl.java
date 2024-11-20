package com.sof3012.repository.impl;

import com.sof3012.entity.History;
import com.sof3012.repository.HistoryRepository;
import jakarta.persistence.EntityManager;

import java.util.List;

public class HistoryRepositoryImpl extends GenericRepositoryImpl<History, Integer> implements HistoryRepository {

    public HistoryRepositoryImpl(EntityManager em, Class<History> entityClass) {
        super(em, entityClass);
    }


    @Override
    public History findByUserAndVideo(Integer user, Integer video) {
        String sql = "SELECT e FROM History e WHERE e.user.id = ?1 AND e.video.id = ?2";
        return super.findOne(sql, user, video);
    }

    public List<History> findByUser(Integer user) {
        String sql = "SELECT e FROM History e WHERE e.user.id = ?1";
        return super.findMany(sql, user);
    }
}
