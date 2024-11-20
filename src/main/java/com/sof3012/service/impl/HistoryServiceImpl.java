package com.sof3012.service.impl;

import com.sof3012.entity.History;
import com.sof3012.entity.User;
import com.sof3012.entity.Video;
import com.sof3012.repository.HistoryRepository;
import com.sof3012.repository.impl.HistoryRepositoryImpl;
import com.sof3012.service.HistoryService;
import com.sof3012.utils.HibernateUtil;
import jakarta.persistence.EntityManager;

import java.util.List;

public class HistoryServiceImpl implements HistoryService {

    private EntityManager em;

    private HistoryRepository historyRepo;

    public HistoryServiceImpl() {
        this.em = HibernateUtil.getEntityManager();
        this.historyRepo = new HistoryRepositoryImpl(em, History.class);
    }

    @Override
    public History addHistory(User userEntity, Video videoEntity) {
        History history = findByUserAndVideo(userEntity, videoEntity);
        if (history == null) {
            history = new History();
            history.setUser(userEntity);
            history.setVideo(videoEntity);
            return historyRepo.create(history);
        }
        return history;
    }

    @Override
    public History deleteHistory(History entity) {
        return historyRepo.delete(entity);
    }

    @Override
    public History editHistory(History entity) {
        return historyRepo.update(entity);
    }

    @Override
    public History findByUserAndVideo(User userEntity, Video videoEntity) {
        return historyRepo.findByUserAndVideo(userEntity.getId(), videoEntity.getId());
    }

    @Override
    public List<History> getHistory() {
        return historyRepo.findAll(true);
    }

    @Override
    public List<History> getHistoryByUser(User userEntity) {
        return historyRepo.findByUser(userEntity.getId());
    }

    public History reactVideo(User user, Video videoEntity, Boolean reaction) {
        History history = findByUserAndVideo(user, videoEntity);
        if (history == null) {
            return null;
        } else {
            history.setReaction(reaction);
            History entityUpdated = editHistory(history);
            return editHistory(entityUpdated);
        }
    }
}
