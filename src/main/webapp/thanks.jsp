<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanks for joining!</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 40px;
        line-height: 1.6;
    }
    h1 {
        color: teal;
    }
    ul {
        list-style-type: none;
        padding: 0;
    }
    li {
        margin-bottom: 10px;
    }
    span {
        font-weight: bold;
    }
    a {
        color: teal;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <ul>
        <%-- 
            Sử dụng Expression Language (EL) để lấy dữ liệu từ đối tượng 'user'
            mà Servlet đã gửi qua.
        --%>
        <li><span>First Name:</span> ${user.firstName}</li>
        <li><span>Last Name:</span> ${user.lastName}</li>
        <li><span>Email:</span> ${user.email}</li>
    </ul>

    <p>To return to the home page, click the button below.</p>
    
    <form action="index.jsp" method="get">
        <button type="submit">Return</button>
    </form>

</body>
</html>
