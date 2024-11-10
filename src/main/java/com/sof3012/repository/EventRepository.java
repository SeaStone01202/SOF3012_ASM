package com.sof3012.repository;

import com.sof3012.entity.Event;

import java.util.List;

public interface EventRepository extends GenericRepository<Event, Integer>{

    List<Event> findByEventType(String eventType, String username);
}
