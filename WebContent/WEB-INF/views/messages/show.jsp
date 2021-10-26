<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url = "/WEB-INF/layout/app.jsp" >

<c:param name = "content">

    <h2>id:${Todo.id}のTodoの詳細ページ</h2>

    <p>タイトル:<c:out value = "${todo.title }" /></p>
    <p>詳細:<c:out value = "${todo.content }" /></p>
    <p>作成日時:<fmt:formatDate value = "${todo.created_at}" pattern = "yyyy-MM-dd HH:mm:ss"/></p>
    <p>更新日時:<fmt:formatDate value = "${todo.updated_at}" pattern = "yyyy-MM-dd HH:mm:ss"/></p>

    <button type="button" class="btn btn-outline-dark btn-sm">
        <p><a href = "${pageContext.request.contextPath }/index">一覧にもどる</a></p>
    </button>

    <button type="button" class="btn btn-outline-dark btn-sm">
    <p><a href = "${pageContext.request.contextPath }/edit?id=${todo.id}">編集する</a></p>
    </button>

</c:param>
</c:import>