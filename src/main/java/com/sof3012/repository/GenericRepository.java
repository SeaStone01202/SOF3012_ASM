package com.sof3012.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

import java.util.List;

/**
 * Lớp GenericRepository cung cấp các phương thức CRUD (tạo, sửa, xóa, tìm kiếm)
 * chung cho các entity trong cơ sở dữ liệu, dễ dàng mở rộng cho nhiều bảng khác nhau.
 *
 * @param <T> Lớp của entity cần thao tác (ví dụ: User, Video, Favorite).
 * @param <E> Kiểu dữ liệu của ID cho entity (ví dụ: Long, String).
 */
public class GenericRepository<T, E> {

    /**
     * Lớp của entity cần thao tác
     */
    private final Class<T> entityType;

    /**
     * Quản lý các thao tác với cơ sở dữ liệu
     */
    private final EntityManager entityManager;

    /**
     * Khởi tạo repository với lớp entity cụ thể và EntityManager để thực hiện các thao tác.
     *
     * @param entityType Lớp của entity cần thao tác.
     * @param entityManager Đối tượng EntityManager để kết nối với cơ sở dữ liệu.
     */
    public GenericRepository(Class<T> entityType, EntityManager entityManager) {
        this.entityType = entityType;
        this.entityManager = entityManager;
    }

    /**
     * Thêm bản ghi và trả về đối tượng đã được thêm, hoặc null nếu có lỗi.
     *
     * @param entity Đối tượng muốn thêm vào cơ sở dữ liệu.
     * @return entity đã thêm, hoặc null nếu có lỗi xảy ra.
     */
    public T createAndReturnEntity(T entity) {
        try {
            entityManager.getTransaction().begin();
            entityManager.persist(entity);
            entityManager.getTransaction().commit();
            return entity;
        } catch (Exception exception) {
            entityManager.getTransaction().rollback();
            exception.printStackTrace();
            return null;
        }
    }

    /**
     * Cập nhật bản ghi trong cơ sở dữ liệu và trả về đối tượng đã cập nhật.
     *
     * @param entity Đối tượng muốn cập nhật.
     * @return entity đã cập nhật, hoặc null nếu có lỗi xảy ra.
     */
    public T updateAndReturnEntity(T entity) {
        try {
            entityManager.getTransaction().begin();
            T updatedEntity = entityManager.merge(entity);
            entityManager.getTransaction().commit();
            return updatedEntity;
        } catch (Exception exception) {
            entityManager.getTransaction().rollback();
            exception.printStackTrace();
            return null;
        }
    }

    /**
     * Xóa bản ghi dựa trên ID và trả về kết quả.
     *
     * @param id ID của đối tượng muốn xóa.
     * @return true nếu xóa thành công, false nếu có lỗi hoặc không tìm thấy đối tượng.
     */
    public boolean deleteByIdAndReturnResult(E id) {
        try {
            entityManager.getTransaction().begin();
            T entityToDelete = entityManager.find(entityType, id);
            if (entityToDelete != null) {
                entityManager.remove(entityToDelete);
                entityManager.getTransaction().commit();
                return true;
            } else {
                entityManager.getTransaction().rollback();
                return false;
            }
        } catch (Exception exception) {
            entityManager.getTransaction().rollback();
            exception.printStackTrace();
            return false;
        }
    }

    /**
     * Tìm và trả về đối tượng dựa trên ID.
     *
     * @param id ID của đối tượng cần tìm.
     * @return entity nếu tìm thấy, hoặc null nếu không tìm thấy.
     */
    public T findByIdAndReturnEntity(E id) {
        return entityManager.find(entityType, id);
    }

    /**
     * Lấy danh sách tất cả các đối tượng trong bảng tương ứng.
     *
     * @return danh sách các entity hoặc danh sách rỗng nếu có lỗi.
     */
    public List<T> getAllAndReturnList() {
        try {
            String jpql = "SELECT e FROM " + entityType.getSimpleName() + " e";
            TypedQuery<T> query = entityManager.createQuery(jpql, entityType);
            return query.getResultList();
        } catch (Exception exception) {
            exception.printStackTrace();
            return List.of(); // Trả về danh sách rỗng nếu có lỗi
        }
    }

    /**
     * Lấy tổng số bản ghi của entity trong cơ sở dữ liệu.
     *
     * @return Số lượng bản ghi của entity dưới dạng số nguyên.
     */
    public int getTotalRecords() {
        try {
            String jpql = "SELECT COUNT(*) FROM " + this.entityType.getSimpleName();
            Query query = entityManager.createQuery(jpql);
            Long count = (Long) query.getSingleResult(); // Lấy kết quả duy nhất
            return count.intValue(); // Chuyển đổi sang kiểu int
        } catch (Exception exception) {
            exception.printStackTrace();
            return 0;
        }
    }

    /**
     * Lấy danh sách các đối tượng từ một trang cụ thể với kích thước trang cho trước.
     *
     * <p>Note: `setFirstResult` đếm theo index nên sẽ bắt đầu trừ đi 1.</p>
     * <p>Vd: Muốn lấy từ đầu danh sách, sẽ phải bắt đầu từ index = 0, tham số truyền vào là 1 - 1 = 0.</p>
     * @param pageNumber Số thứ tự của trang muốn lấy (bắt đầu từ 1).
     * @param pageSize   Số lượng bản ghi trên mỗi trang.
     * @return Danh sách các entity trong trang được yêu cầu, hoặc danh sách rỗng nếu không có bản ghi nào.
     */
    public List<T> findByPage(int pageNumber, int pageSize) {
        try {
            String jpql = "SELECT o FROM " + this.entityType.getSimpleName() +  " o";
            TypedQuery<T> query = entityManager.createQuery(jpql, entityType);
            query.setFirstResult((pageNumber - 1) * pageSize);
            query.setMaxResults(pageSize);
            return query.getResultList();
        } catch (Exception exception) {
            exception.printStackTrace();
            return List.of();
        }
    }
}