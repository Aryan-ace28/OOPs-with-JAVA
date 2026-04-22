package com.library.servlet;

import com.library.dao.BookDAO;
import com.library.model.Book;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/books")
public class BookServlet extends HttpServlet {

    private BookDAO bookDAO = new BookDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Book> books = bookDAO.getAllBooks();
            request.setAttribute("books", books);
            request.getRequestDispatcher("/viewBooks.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        int copies = Integer.parseInt(request.getParameter("availableCopies"));

        Book book = new Book();
        book.setTitle(title);
        book.setAuthor(author);
        book.setAvailableCopies(copies);

        try {
            bookDAO.addBook(book);
            response.sendRedirect("books");
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
}