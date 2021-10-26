<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url = "/WEB-INF/layout/app.jsp">

    <c:param name="content">
        <h2>id:${todo.id}の編集ページ</h2>

        <form method = "POST" action = "${pageContext.request.contextPath}/update">
            <c:import url="_form.jsp"></c:import>
        </form>

        <button type="button" class="btn btn-outline-dark btn-sm">
        <p><a href = "${pageContext.request.contextPath }/index">一覧にもどる</a></p>
        </button>

    </c:param>

</c:import>