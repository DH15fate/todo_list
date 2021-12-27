<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/WEB-INF/layout/app.jsp">

    <c:param name="content">
        <c:choose>
            <c:when test="${todo != null }">

                <div class="position-relative">
                    <div class="position-absolute top-50 end-50 my-4">
                        <h2>タスク編集ページ</h2>
                        <form method="POST" action="${pageContext.request.contextPath}/update">
                            <c:import url="_form.jsp"></c:import>
                        </form>

                        <button type="button" onclick = "location.href = '${pageContext.request.contextPath }/index'"class="btn btn-outline-dark btn-sm">
                            一覧に戻る
                        </button>

                        <button type="button" onclick = "confirmDestroy();"class="btn btn-outline-dark btn-sm">
                            削除する
                        </button>

                        <form method="POST" action="${pageContext.request.contextPath}/destroy">
                            <input type="hidden" name="_token" value="${_token }" />
                        </form>

                        <script>
                            function confirmDestroy(){
                                if(confirm("本当に削除してもよろしいですか?")){
                                    document.forms[1].submit();
                                }
                            }
                       </script>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <h2>お探しのデータは見つかりませんでした。</h2>
            </c:otherwise>
        </c:choose>
    </c:param>

</c:import>