package com.sof3012.service;

import com.sof3012.repository.GenericRepository;

import java.util.List;

/**
 * Lớp GenericService cung cấp các phương thức chung cho các thao tác CRUD (tạo, sửa, xóa, tìm kiếm)
 * cho các entity sử dụng repository cụ thể. Lớp này giúp giảm thiểu mã lặp lại và dễ dàng mở rộng.
 *
 * @param <T> Lớp của entity cần thao tác (ví dụ: User, Product).
 * @param <E> Kiểu dữ liệu của ID cho entity (ví dụ: Long, String).
 * @param <R> Kiểu dữ liệu của repository, phải kế thừa từ GenericRepository<T, E>.
 */
public class GenericService<T, E, R extends GenericRepository<T, E>> {

    /**
     * Lớp của entity cần thao tác.
     */
    private final Class<T> targetEntityClass;

    /**
     * Repository tương ứng để thực hiện các thao tác với cơ sở dữ liệu.
     */
    private final R repository;

    /**
     * Khởi tạo một GenericService với lớp entity và repository cụ thể.
     *
     * @param targetEntityClass Lớp của entity cần thao tác.
     * @param repository        Đối tượng repository để thực hiện các thao tác CRUD.
     */
    public GenericService(Class<T> targetEntityClass, R repository) {
        this.targetEntityClass = targetEntityClass;
        this.repository = repository;
    }

    /**
     * Thêm một entity vào cơ sở dữ liệu và trả về entity đã thêm.
     *
     * @param entity Đối tượng muốn thêm.
     * @return entity đã thêm, hoặc null nếu có lỗi xảy ra.
     */
    public T create(T entity) {
        return repository.createAndReturnEntity(entity);
    }

    /**
     * Cập nhật một entity trong cơ sở dữ liệu và trả về entity đã cập nhật.
     *
     * @param entity Đối tượng muốn cập nhật.
     * @return entity đã cập nhật, hoặc null nếu có lỗi xảy ra.
     */
    public T update(T entity) {
        return repository.updateAndReturnEntity(entity);
    }

    /**
     * Xóa một entity dựa trên ID và trả về kết quả của thao tác xóa.
     *
     * @param id ID của entity muốn xóa.
     * @return true nếu xóa thành công, false nếu có lỗi hoặc không tìm thấy entity.
     */
    public boolean delete(E id) {
        return repository.deleteByIdAndReturnResult(id);
    }

    /**
     * Lấy danh sách tất cả các entity trong cơ sở dữ liệu.
     *
     * @return Danh sách các entity hoặc danh sách rỗng nếu có lỗi xảy ra.
     */
    public List<T> findAll() {
        return repository.getAllAndReturnList();
    }

    /**
     * Tìm và trả về một entity dựa trên ID.
     *
     * @param id ID của entity cần tìm.
     * @return entity nếu tìm thấy, hoặc null nếu không tìm thấy.
     */
    public T findById(E id) {
        return repository.findByIdAndReturnEntity(id);
    }

    /**
     * Lấy tổng số bản ghi hiện có trong cơ sở dữ liệu.
     *
     * @return Tổng số bản ghi dưới dạng số nguyên.
     */
    public int getTotalRecords() {
        return repository.getTotalRecords();
    }

    /**
     * Lấy danh sách các entity theo trang cụ thể dựa trên số trang và kích thước trang.
     *
     * @param pageNumber Số trang cần lấy (bắt đầu từ 1).
     * @param pageSize   Kích thước của mỗi trang.
     * @return Danh sách các entity cho trang cụ thể hoặc danh sách rỗng nếu có lỗi xảy ra.
     */
    public List<T> findByPage(int pageNumber, int pageSize) {
        return repository.findByPage(pageNumber, pageSize);
    }

    /**
     * Tính tổng số trang dựa trên tổng số bản ghi và kích thước trang.
     *
     * @param totalRecords Tổng số bản ghi.
     * @param pageSize    Kích thước của mỗi trang.
     * @return Tổng số trang dưới dạng số nguyên.
     */
    public int totalPages(int totalRecords, int pageSize) {
        try {
            return (int) Math.ceil((double) totalRecords / pageSize);
        } catch (Exception exception) {
            exception.printStackTrace();
            return 0;
        }
    }
}