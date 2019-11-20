<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
</head>
<body>
<div style="width: 50%;">
    <%--<c:forEach var="item" items="${data}">--%>
        <%--num: ${item.testNum}<br/>--%>
        <%--content: ${item.testContent}<br/>--%>
    <%--</c:forEach>--%>
<%----%>
    <jsp:include page="seat.jsp"></jsp:include>
</div>
<%--<h1>File Upload</h1>
<form method="post" action="upload" enctype="multipart/form-data">
    <label>email:</label>
    <input type="text" name="email">
    <br><br>
    <label>File:</label>
    <input type="file" name="file1">
    <br><br>
    <input type="submit" value="upload">
</form>--%>
</body>
</html>

