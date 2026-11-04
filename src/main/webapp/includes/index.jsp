<%@ page contentType="text/html;charset=UTF-8" %>
<% request.setAttribute("currentPage", "home.jsp"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>This is the website Title~</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

    <jsp:include page="/includes/header.jsp" />

    <div class="sidebar-layout">
        <jsp:include page="/includes/sidebar.jsp" />

        <main class="content">
            <h2>This is the content area~</h2>
        </main>
    </div>

    <script>window.CTX = '${pageContext.request.contextPath}';</script>
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>