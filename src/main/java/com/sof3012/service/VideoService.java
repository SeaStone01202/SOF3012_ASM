package com.sof3012.service;

import com.sof3012.entity.Video;

import java.util.List;

public interface VideoService {

    Video create (Video video);

    Video update (Video video);

    Video delete (String href);

    List<Video> getAllVideos();
}
