package controllers;

import java.io.IOException;
import java.sql.Timestamp;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Todo;
import utils.DBUtil;

/**
 * Servlet implementation class CompleteServlet
 */
@WebServlet("/complete")
public class CompleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManager em = DBUtil.createEntityManager();

      //該当Idの詳細を１件DBから取得
        Todo m = em.find(Todo.class,Integer.parseInt(request.getParameter("id")));

        int complete_flag = 0;
        m.setComplete_flag(complete_flag);

        Timestamp currentTime = new Timestamp(System.currentTimeMillis());
        m.setUpdated_at(currentTime);

        //DB更新
        em.getTransaction().begin();
        em.getTransaction().commit();
        request.getSession().setAttribute("flush","タスクが完了しました");
        em.close();

      //セッションスコープ上の不要になったデータを削除
        request.getSession().removeAttribute("todo_id");

        //indexページへリダイレクト
        response.sendRedirect(request.getContextPath() + "/index");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
