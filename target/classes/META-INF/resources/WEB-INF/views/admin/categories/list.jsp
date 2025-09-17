<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Category List</title>
</head>
<body>

    <h2>Category List</h2>

    <!-- Hiển thị thông báo -->
    <c:if test="${message != null}">
        <p>${message}</p>
    </c:if>

    <!-- Bảng danh sách -->
    <table border="1" width="100%" cellpadding="5">
        <thead>
            <tr>
                <th>Category ID</th>
                <th>Category Name</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${categories}" var="category">
                <tr>
                    <td>${category.id}</td>
                    <td>${category.categoryName}</td>
                    <td>
                        <a href="/admin/categories/view/${category.id}">View</a> |
                        <a href="/admin/categories/edit/${category.id}">Edit</a> |
                        <a href="/admin/categories/delete/${category.id}"
                           onclick="return confirm('Bạn có chắc muốn xóa?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Phân trang -->
    <p>
        <a href="#">Previous</a>
        <a href="#">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">Next</a>
    </p>

</body>
</html>
