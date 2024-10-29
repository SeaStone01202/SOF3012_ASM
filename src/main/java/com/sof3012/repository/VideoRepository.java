package com.sof3012.repository;

import com.sof3012.entity.Video;
import jakarta.persistence.EntityManager;

import java.util.List;

public class VideoRepository extends GenericRepository<Video, String> implements InterfaceRepository<Video, String>{
    /**
     * Khởi tạo repository với lớp entity cụ thể và EntityManager để thực hiện các thao tác.
     *
     * @param entityClass Lớp của entity cần thao tác.
     * @param em          Đối tượng EntityManager để kết nối với cơ sở dữ liệu.
     */
    public VideoRepository(Class<Video> entityClass, EntityManager em) {
        super(entityClass, em);
    }

    @Override
    public Video save(Video entity) {
        return super.createAndReturnEntity(entity);
    }

    @Override
    public Video update(Video entity) {
        return super.updateAndReturnEntity(entity);
    }

    @Override
    public boolean delete(String id) {
        return super.deleteByIdAndReturnResult(id);
    }

    @Override
    public List<Video> findAll() {
        return super.getAllAndReturnList();
    }

    @Override
    public Video findById(String id) {
        return super.findByIdAndReturnEntity(id);
    }
}
