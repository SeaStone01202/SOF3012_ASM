package com.sof3012.repository;

import com.sof3012.entity.Video;

public interface VideoRepository extends GenericRepository<Video, Integer> {

    Video findByTitle(String title);


}
