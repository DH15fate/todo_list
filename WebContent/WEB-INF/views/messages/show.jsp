<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="/WEB-INF/layout/app.jsp">

    <c:param name="content">
        <c:choose>
            <c:when test="${todo != null }">
                <h2>id:${todo.id}のTodoの詳細ページ</h2>
                <table class="table table-dark table-striped">
                    <tbody>
                        <tr>
                            <th scope="row">タイトル</th>
                            <td><c:out value="${todo.title }" /></td>
                        </tr>
                        <tr>
                            <th scope="row">詳細</th>
                            <td><c:out value="${todo.content }" /></td>
                        </tr>
                        <tr>
                            <th scope="row">作成日時</th>
                            <td><fmt:formatDate value="${todo.created_at}"
                                    pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th scope="row">更新日時</th>
                            <td><fmt:formatDate value="${todo.updated_at}"
                                    pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                    </tbody>
                </table>
                <button type="button" onclick = "location.href = '${pageContext.request.contextPath }/index'"class="btn btn-outline-dark btn-sm">
                        一覧にもどる
                </button>

                <button type="button" onclick = "location.href = '${pageContext.request.contextPath }/edit?id=${todo.id}'"class="btn btn-outline-dark btn-sm">
                        編集する
                </button>
            </c:when>

            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした</h2>
            </c:otherwise>
        </c:choose>
    </c:param>
</c:import>