package com.sof3012.repository.impl;

import com.sof3012.entity.Event;
import com.sof3012.repository.EventRepository;
import jakarta.persistence.EntityManager;

import java.util.List;

public class EventRepositoryImpl extends GenericRepositoryImpl<Event, Integer> implements EventRepository{

    public EventRepositoryImpl(EntityManager em, Class<Event> entityClass) {
        super(em, entityClass);
    }

    @Override
    public List<Event> findByEventType(String eventType, String username) {
        String sql = "SELECT e FROM Event e WHERE e.user.username = ?2 AND e.video.active = 1 AND e.type = ?1"
                + " ORDER BY e.date DESC";
        return super.findMany(sql, eventType, username);
    }

}
