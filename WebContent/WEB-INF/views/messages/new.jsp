<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/layout/app.jsp">
    <c:param name = "content">

        <div class="position-relative">
            <div class="position-absolute top-50 end-50 my-4">
            <h2>新規投稿画面</h2>
            <form method = "POST" action = "${pageContext.request.contextPath }/create">
                <c:import url="_form.jsp"></c:import>
            </form>
            <br>
            <button type="button" onclick = "location.href = '${pageContext.request.contextPath}/index'" class="btn btn-outline-dark btn-sm">
                一覧に戻る
            </button>
        </div>
    </c:param>
</c:import>