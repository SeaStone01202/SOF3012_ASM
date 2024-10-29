package com.sof3012.repository;

import com.sof3012.entity.Favorite;
import jakarta.persistence.EntityManager;

import java.util.List;

public class FavoriteRepository extends GenericRepository<Favorite, Integer> implements InterfaceRepository<Favorite, Integer> {
    /**
     * Khởi tạo repository với lớp entity cụ thể và EntityManager để thực hiện các thao tác.
     *
     * @param entityClass Lớp của entity cần thao tác.
     * @param em          Đối tượng EntityManager để kết nối với cơ sở dữ liệu.
     */
    public FavoriteRepository(Class<Favorite> entityClass, EntityManager em) {
        super(entityClass, em);
    }

    @Override
    public Favorite save(Favorite entity) {
        return null;
    }

    @Override
    public Favorite update(Favorite entity) {
        return null;
    }

    @Override
    public boolean delete(Integer id) {
        return false;
    }

    @Override
    public List<Favorite> findAll() {
        return List.of();
    }

    @Override
    public Favorite findById(Integer id) {
        return null;
    }
}
