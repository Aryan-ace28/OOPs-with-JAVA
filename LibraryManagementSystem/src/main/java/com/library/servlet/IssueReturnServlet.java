package com.library.servlet;

import com.library.dao.BookDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/issueReturn")
public class IssueReturnServlet extends HttpServlet {

    private BookDAO bookDAO = new BookDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int bookId = Integer.parseInt(request.getParameter("bookId"));
        String action = request.getParameter("action");

        try {
            if (action.equals("issue")) {
                boolean success = bookDAO.issueBook(bookId);
                if (!success) {
                    request.setAttribute("error", "Book not available or ID not found!");
                    request.getRequestDispatcher("/viewBooks.jsp").forward(request, response);
                    return;
                }
            } else if (action.equals("return")) {
                boolean success = bookDAO.returnBook(bookId);
                if (!success) {
                    request.setAttribute("error", "Book ID not found!");
                    request.getRequestDispatcher("/viewBooks.jsp").forward(request, response);
                    return;
                }
            }
            response.sendRedirect("books");

        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}