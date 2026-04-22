<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Library Management System</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: 'Inter', sans-serif;
            background: #0f1117;
            color: #e2e8f0;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .hero {
            text-align: center;
            padding: 60px 40px;
        }
        .badge {
            display: inline-block;
            background: rgba(99,102,241,0.15);
            border: 1px solid rgba(99,102,241,0.4);
            color: #a5b4fc;
            padding: 6px 18px;
            border-radius: 20px;
            font-size: 12px;
            letter-spacing: 1px;
            text-transform: uppercase;
            margin-bottom: 24px;
        }
        h1 {
            font-size: 52px;
            font-weight: 700;
            background: linear-gradient(135deg, #e2e8f0, #a5b4fc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 16px;
            line-height: 1.2;
        }
        .subtitle {
            color: #64748b;
            font-size: 17px;
            margin-bottom: 48px;
        }
        .btn-group {
            display: flex;
            gap: 16px;
            justify-content: center;
            flex-wrap: wrap;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 14px 32px;
            border-radius: 12px;
            font-size: 15px;
            font-weight: 500;
            text-decoration: none;
            transition: all 0.2s;
            cursor: pointer;
        }
        .btn-primary {
            background: #6366f1;
            color: white;
            border: 1px solid #6366f1;
        }
        .btn-primary:hover {
            background: #5558e3;
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(99,102,241,0.35);
        }
        .btn-outline {
            background: transparent;
            color: #a5b4fc;
            border: 1px solid rgba(99,102,241,0.4);
        }
        .btn-outline:hover {
            background: rgba(99,102,241,0.1);
            transform: translateY(-2px);
        }
        .stats {
            display: flex;
            gap: 32px;
            justify-content: center;
            margin-top: 64px;
            flex-wrap: wrap;
        }
        .stat {
            text-align: center;
        }
        .stat-num {
            font-size: 28px;
            font-weight: 700;
            color: #a5b4fc;
        }
        .stat-label {
            font-size: 13px;
            color: #475569;
            margin-top: 4px;
        }
        .divider {
            width: 1px;
            background: #1e293b;
            height: 40px;
            align-self: center;
        }
    </style>
</head>
<body>
<div class="hero">
    <div class="badge">📚 Library Management System</div>
    <h1>Manage Your Library<br>With Ease</h1>
    <p class="subtitle">Add books, issue them to readers,<br>and track returns — all in one place.</p>
    <div class="btn-group">
        <a href="books" class="btn btn-primary">
            📖 View All Books
        </a>
        <a href="addBook.jsp" class="btn btn-outline">
            ➕ Add New Book
        </a>
    </div>
    <div class="stats">
        <div class="stat">
            <div class="stat-num">JDBC</div>
            <div class="stat-label">Database Layer</div>
        </div>
        <div class="divider"></div>
        <div class="stat">
            <div class="stat-num">Servlet</div>
            <div class="stat-label">Backend Logic</div>
        </div>
        <div class="divider"></div>
        <div class="stat">
            <div class="stat-num">JSP</div>
            <div class="stat-label">Frontend Views</div>
        </div>
    </div>
</div>
</body>
</html>