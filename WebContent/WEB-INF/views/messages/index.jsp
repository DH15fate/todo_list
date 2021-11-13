<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/layout/app.jsp">
    <c:param name="content">
        <h2>TODO一覧</h2>

        <table class="table table-dark table-striped">
            <thead>
                <th scope="col">#</th>
                <th scope="col">タイトル</th>
                <th scope="col">内容</th>
                <th scope="col">詳細</th>
            </thead>
            <c:forEach var="todo" items="${todos}">
                <tbody>
                    <tr>
                        <th scope="col"><c:out value="${todo.id}" /></th>
                        <th scope="col"><c:out value="${todo.title}"></c:out></th>
                        <th scope="col"><c:out value="${todo.content}" /></th>
                        <th scope="col"><a
                            href="${pageContext.request.contextPath}/show?id=${todo.id}">詳細を見る</a></th>
                    </tr>
                </tbody>
            </c:forEach>
        </table>


        <button type="button" onclick = "location.href = '${pageContext.request.contextPath}/new'" class="btn btn-outline-dark btn-sm">
            新規投稿
        </button>
    </c:param>
</c:import>