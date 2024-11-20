package com.sof3012.service;

import com.sof3012.entity.History;
import com.sof3012.entity.User;
import com.sof3012.entity.Video;

import java.util.List;

public interface HistoryService {

    History addHistory(User userEntity, Video videoEntity);

    History deleteHistory(History entity);

    History editHistory(History entity);

    History findByUserAndVideo(User userEntity, Video videoEntity);

    List<History> getHistory();

    List<History> getHistoryByUser(User userEntity);

    History reactVideo(User userEntity, Video videoEntity, Boolean reaction);
}
