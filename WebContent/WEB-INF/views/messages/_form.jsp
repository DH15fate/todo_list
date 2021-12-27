<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${errors != null }">
    <div class="alert alert-danger" role="alert" id="flush_error">
        <strong> 入力内容にエラーがあります<br />
        </strong>
        <c:forEach var="error" items="${errors }">
                    ・<c:out value="${error }" />
            <br />

        </c:forEach>
    </div>
</c:if>
<div class="my-4">
    <label for="title">タイトル</label><br />
    <input type="text" class = "form-control" name="title" value="${todo.title}" /><br /><br />
    <label for="content">メッセージ</label><br />
    <input type="text" class = "form-control" name="content" value="${todo.content}" /><br /><br />
    <lable type="deadline">締切日</lable><br />
    <input type="date" id="date" name="deadline" value="${todo.deadline}" /><br /><br />
    <input type="hidden" name="_token" value="${_token}" />
    <button type="submit" class="btn btn-outline-dark btn-sm">追加</button>



</div>
