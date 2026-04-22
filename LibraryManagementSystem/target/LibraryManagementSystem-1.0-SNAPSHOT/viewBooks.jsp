<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.library.model.Book, java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library — All Books</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Inter', sans-serif;
            background: #0f1117;
            color: #e2e8f0;
            min-height: 100vh;
            padding: 40px 24px;
        }

        /* NAVBAR */
        .navbar {
            max-width: 1100px;
            margin: 0 auto 40px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .navbar-brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 18px;
            font-weight: 700;
            color: #e2e8f0;
            text-decoration: none;
        }
        .navbar-brand span {
            background: rgba(99,102,241,0.15);
            border: 1px solid rgba(99,102,241,0.3);
            padding: 6px 10px;
            border-radius: 8px;
            font-size: 16px;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            padding: 10px 20px;
            border-radius: 10px;
            font-size: 14px;
            font-weight: 500;
            text-decoration: none;
            transition: all 0.2s;
            font-family: 'Inter', sans-serif;
            cursor: pointer;
            border: none;
        }
        .btn-primary {
            background: #6366f1;
            color: white;
        }
        .btn-primary:hover {
            background: #5558e3;
            transform: translateY(-1px);
            box-shadow: 0 6px 20px rgba(99,102,241,0.3);
        }

        /* PAGE HEADER */
        .page-header {
            max-width: 1100px;
            margin: 0 auto 32px;
        }
        .page-header h1 {
            font-size: 32px;
            font-weight: 700;
            color: #e2e8f0;
            margin-bottom: 6px;
        }
        .page-header p {
            color: #475569;
            font-size: 15px;
        }

        /* ERROR */
        .error-box {
            max-width: 1100px;
            margin: 0 auto 24px;
            background: rgba(239,68,68,0.1);
            border: 1px solid rgba(239,68,68,0.3);
            color: #fca5a5;
            padding: 14px 20px;
            border-radius: 12px;
            font-size: 14px;
        }

        /* TABLE WRAPPER */
        .table-wrapper {
            max-width: 1100px;
            margin: 0 auto;
            background: #1a1f2e;
            border: 1px solid #2d3748;
            border-radius: 16px;
            overflow: hidden;
        }
        .table-toolbar {
            padding: 20px 24px;
            border-bottom: 1px solid #2d3748;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .table-toolbar span {
            font-size: 14px;
            color: #475569;
        }
        .total-badge {
            background: rgba(99,102,241,0.15);
            border: 1px solid rgba(99,102,241,0.3);
            color: #a5b4fc;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }
        thead tr {
            background: #141720;
        }
        th {
            padding: 14px 24px;
            text-align: left;
            font-size: 11px;
            font-weight: 600;
            color: #475569;
            text-transform: uppercase;
            letter-spacing: 0.8px;
        }
        td {
            padding: 16px 24px;
            font-size: 14px;
            color: #cbd5e1;
            border-top: 1px solid #1e293b;
        }
        tbody tr {
            transition: background 0.15s;
        }
        tbody tr:hover td {
            background: rgba(99,102,241,0.04);
        }

        /* ID BADGE */
        .id-badge {
            background: #141720;
            border: 1px solid #2d3748;
            color: #475569;
            padding: 3px 10px;
            border-radius: 6px;
            font-size: 12px;
            font-weight: 600;
            font-family: monospace;
        }

        /* COPIES BADGE */
        .copies-badge {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
        }
        .copies-high {
            background: rgba(34,197,94,0.1);
            border: 1px solid rgba(34,197,94,0.25);
            color: #4ade80;
        }
        .copies-low {
            background: rgba(245,158,11,0.1);
            border: 1px solid rgba(245,158,11,0.25);
            color: #fbbf24;
        }
        .copies-none {
            background: rgba(239,68,68,0.1);
            border: 1px solid rgba(239,68,68,0.25);
            color: #f87171;
        }

        /* ACTION BUTTONS */
        .action-group {
            display: flex;
            gap: 8px;
        }
        .btn-issue {
            padding: 7px 16px;
            background: rgba(34,197,94,0.1);
            border: 1px solid rgba(34,197,94,0.25);
            color: #4ade80;
            border-radius: 8px;
            font-size: 13px;
            font-weight: 500;
            cursor: pointer;
            font-family: 'Inter', sans-serif;
            transition: all 0.2s;
        }
        .btn-issue:hover {
            background: rgba(34,197,94,0.2);
            transform: translateY(-1px);
        }
        .btn-return {
            padding: 7px 16px;
            background: rgba(245,158,11,0.1);
            border: 1px solid rgba(245,158,11,0.25);
            color: #fbbf24;
            border-radius: 8px;
            font-size: 13px;
            font-weight: 500;
            cursor: pointer;
            font-family: 'Inter', sans-serif;
            transition: all 0.2s;
        }
        .btn-return:hover {
            background: rgba(245,158,11,0.2);
            transform: translateY(-1px);
        }

        /* EMPTY STATE */
        .empty-state {
            text-align: center;
            padding: 80px 40px;
        }
        .empty-icon {
            font-size: 48px;
            margin-bottom: 16px;
        }
        .empty-state h3 {
            font-size: 18px;
            color: #334155;
            margin-bottom: 8px;
        }
        .empty-state p {
            font-size: 14px;
            color: #1e293b;
        }
    </style>
</head>
<body>

<!-- NAVBAR -->
<nav class="navbar">
    <a href="index.jsp" class="navbar-brand">
        <span>📚</span> LibraryMS
    </a>
    <a href="addBook.jsp" class="btn btn-primary">➕ Add New Book</a>
</nav>

<!-- PAGE HEADER -->
<div class="page-header">
    <h1>All Books</h1>
    <p>Browse, issue, and return books from the library collection.</p>
</div>

<!-- ERROR -->
<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
<div class="error-box">⚠️ <%= error %></div>
<% } %>

<!-- TABLE -->
<div class="table-wrapper">
    <%
        List<Book> books = (List<Book>) request.getAttribute("books");
        int total = (books != null) ? books.size() : 0;
    %>
    <div class="table-toolbar">
        <span>Library Collection</span>
        <span class="total-badge"><%= total %> books</span>
    </div>

    <% if (books == null || books.isEmpty()) { %>
    <div class="empty-state">
        <div class="empty-icon">📭</div>
        <h3>No books found</h3>
        <p>Add some books to get started</p>
    </div>
    <% } else { %>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Copies</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <% for (Book book : books) {
            int copies = book.getAvailableCopies();
            String copiesClass = copies == 0 ? "copies-none" : copies <= 2 ? "copies-low" : "copies-high";
            String copiesIcon = copies == 0 ? "🔴" : copies <= 2 ? "🟡" : "🟢";
        %>
        <tr>
            <td><span class="id-badge">#<%= book.getBookId() %></span></td>
            <td><strong style="color:#e2e8f0"><%= book.getTitle() %></strong></td>
            <td><%= book.getAuthor() %></td>
            <td>
                        <span class="copies-badge <%= copiesClass %>">
                            <%= copiesIcon %> <%= copies %> left
                        </span>
            </td>
            <td>
                <div class="action-group">
                    <form action="issueReturn" method="post" style="display:inline">
                        <input type="hidden" name="bookId" value="<%= book.getBookId() %>"/>
                        <input type="hidden" name="action" value="issue"/>
                        <button type="submit" class="btn-issue">📤 Issue</button>
                    </form>
                    <form action="issueReturn" method="post" style="display:inline">
                        <input type="hidden" name="bookId" value="<%= book.getBookId() %>"/>
                        <input type="hidden" name="action" value="return"/>
                        <button type="submit" class="btn-return">📥 Return</button>
                    </form>
                </div>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <% } %>
</div>

</body>
</html>