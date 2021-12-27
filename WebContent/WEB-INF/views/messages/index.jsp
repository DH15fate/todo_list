<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null }">
            <div class="alert alert-success" role="alert" id="flush">
                <c:out value="${flush }" />
            </div>
        </c:if>
        <h2>一覧</h2>
        <table class="table table-dark table-hover">
            <thead>
                <th scope="col">タイトル</th>
                <th scope="col">内容</th>
                <th scope="col">締切日</th>
                <th scope="col">詳細</th>
                <th scope="col"></th>
            </thead>
            <c:forEach var="todo" items="${todos}" varStatus="status">
                <c:if test="${todo.complete_flag == 1}">
                    <tbody>
                        <tr>
                            <th scope="col"><c:out value="${todo.title}"></c:out></th>
                            <th scope="col"><c:out value="${todo.content}" /></th>
                            <th scope="col"><c:out value="${todo.deadline}" /></th>
                            <th scope="col"><a
                                href="${pageContext.request.contextPath}/show?id=${todo.id}">詳細を見る</a></th>
                            <th scope="col"><a
                                href="${pageContext.request.contextPath}/complete?id=${todo.id}">タスクを完了する</a></th>
                        </tr>
                    </tbody>
                </c:if>
            </c:forEach>
        </table>

        <div class="mx-3 my-2">
            <button type="button"
                onclick="location.href = '${pageContext.request.contextPath}/new'"
                class="btn btn-outline-dark btn-sm">新規タスク追加
            </button>
        </div>
        <div class="mx-3 my-2">
            <button type="button"
                onclick="location.href = '${pageContext.request.contextPath}/history'"
                class="btn btn-outline-dark btn-sm rounded-pill">履歴
            </button>
        </div>
    </c:param>
</c:import>