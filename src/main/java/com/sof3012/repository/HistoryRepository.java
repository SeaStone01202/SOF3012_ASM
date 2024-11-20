package com.sof3012.repository;

import com.sof3012.entity.History;

import java.util.List;

public interface HistoryRepository extends GenericRepository<History, Integer>{

    History findByUserAndVideo (Integer user, Integer video);

    List<History> findByUser(Integer user);
}
