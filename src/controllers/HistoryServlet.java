package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Todo;
import utils.DBUtil;

/**
 * Servlet implementation class HistoryServlet
 */
@WebServlet("/history")
public class HistoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public HistoryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EntityManager em = DBUtil.createEntityManager();

        List<Todo> todos = em.createNamedQuery("getAllTodos",Todo.class).getResultList();

        em.close();

        request.setAttribute("todos",todos);


        //フラッシュメッセージがセッションスコープにセットされていたら
        //リクエストスコープに保存する
        if(request.getSession().getAttribute("flush") != null) {
            request.setAttribute("flush",request.getSession().getAttribute("flush"));
            request.getSession().removeAttribute("flush");
        }
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/messages/history.jsp");
        rd.forward(request,response);
    }

}