<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/layout/app.jsp">
    <c:param name="content">
        <h2>TODO一覧</h2>
        <ul>
            <c:forEach var="todo" items="${todos}">
                <li>

                    <c:out value="${todo.id}" />

                    ：<c:out value="${todo.title}"></c:out> &gt; <c:out value="${todo.content}" />

                   <a href="${pageContext.request.contextPath}/show?id=${todo.id}">詳細を見る</a>
                </li>
            </c:forEach>
        </ul>

        <button type="button" class="btn btn-outline-dark btn-sm">
            <p><a href="${pageContext.request.contextPath}/new">新規投稿</a></p>
        </button>
    </c:param>
</c:import>