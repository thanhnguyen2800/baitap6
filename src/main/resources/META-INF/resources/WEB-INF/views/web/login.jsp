<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<h2>Đăng nhập hệ thống</h2>

<form method="post" action="/web/doLogin">
    <p>
        Tên đăng nhập: <input type="text" name="username"/>
    </p>
    <p>
        Mật khẩu: <input type="password" name="password"/>
    </p>
    <button type="submit">Đăng nhập</button>
</form>

<p>Chưa có tài khoản? <a href="/web/register">Đăng ký</a></p>
</body>
</html>
