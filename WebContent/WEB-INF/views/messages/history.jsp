<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush != null }">
            <div class="alert alert-danger" role="alert" id="flush">
                <c:out value="${flush }" />
            </div>
        </c:if>
        <h2>過去に完了したタスク一覧</h2>
        <table class="table table-dark table-hover">
            <thead>
                <th scope="col">タイトル</th>
                <th scope="col">内容</th>
                <th scope="col">締切日</th>
                <th scope="col">完了日</th>
                <th scope="col"></th>
            </thead>

            <!-- タスクの表　表示 -->
            <c:forEach var="todo" items="${todos}" varStatus="status">
                <c:if test="${todo.complete_flag == 0}">
                    <tbody>
                        <tr>
                            <th scope="col"><c:out value="${todo.title}"></c:out></th>
                            <th scope="col"><c:out value="${todo.content}" /></th>
                            <th scope="col"><c:out value="${todo.deadline}" /></th>
                            <th><fmt:formatDate value="${todo.updated_at}"
                                    pattern="yyyy-MM-dd HH:mm:ss" /></th>
                            <th scope="col"><a
                                href="${pageContext.request.contextPath}/destroy?id=${todo.id}">削除する</a></th>
                        </tr>
                    </tbody>
                </c:if>
            </c:forEach>
        </table>
        <div class="mx-3 my-2">
            <button type="button"
                onclick="location.href = '${pageContext.request.contextPath}/index'"
                class="btn btn-outline-dark btn-sm">戻る</button>
        </div>
    </c:param>
</c:import>