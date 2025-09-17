<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Tìm kiếm</title>
</head>
<body>
<h2>Tìm kiếm</h2>

<!-- Form tìm kiếm -->
<form method="get" action="/web/search">
    <input type="text" name="keyword" placeholder="Nhập từ khóa"/>
    <button type="submit">Tìm</button>
</form>

<!-- Hiển thị kết quả -->
<c:if test="${not empty categories}">
    <h3>Kết quả tìm danh mục</h3>
    <ul>
        <c:forEach items="${categories}" var="c">
            <li>${c.categoryName}</li>
        </c:forEach>
    </ul>
</c:if>

<c:if test="${not empty videos}">
    <h3>Kết quả tìm video</h3>
    <ul>
        <c:forEach items="${videos}" var="v">
            <li>${v.title} - ${v.description}</li>
        </c:forEach>
    </ul>
</c:if>
</body>
</html>
