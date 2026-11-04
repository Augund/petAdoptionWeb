<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>Peoblem here~

<c:set var="collapsed" value="${sessionScope.sidebarCollapsed == true}" />

<aside class="sidebar ${collapsed ? 'collapsed' : ''}" id="sidebar">
    <nav>
        <ul class="nav-list">
            <c:forEach var="item" items="${[
                {name:'Home',     href:'home.jsp'},
                {name:'Our pets', href:'our-pets.jsp'},
                {name:'Adopt',    href:'adopt.jsp'},
                {name:'Contact',  href:'contact.jsp'}
            ]}">
                <li>
                    <a href="${pageContext.request.contextPath}/${item.href}"
                       class="${currentPage == item.href ? 'active' : ''}">
                        ${item.name}
                    </a>
                </li>
            </c:forEach>
        </ul>
    </nav>
</aside>