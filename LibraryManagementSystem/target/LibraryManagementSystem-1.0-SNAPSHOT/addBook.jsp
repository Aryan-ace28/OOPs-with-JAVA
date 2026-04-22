<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
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
        .card {
            background: #1a1f2e;
            border: 1px solid #2d3748;
            border-radius: 20px;
            padding: 40px;
            width: 100%;
            max-width: 460px;
            box-shadow: 0 25px 50px rgba(0,0,0,0.4);
        }
        .card-header {
            margin-bottom: 32px;
        }
        .back-link {
            display: inline-flex;
            align-items: center;
            gap: 6px;
            color: #475569;
            text-decoration: none;
            font-size: 13px;
            margin-bottom: 20px;
            transition: color 0.2s;
        }
        .back-link:hover { color: #a5b4fc; }
        .card-header h2 {
            font-size: 24px;
            font-weight: 700;
            color: #e2e8f0;
            margin-bottom: 6px;
        }
        .card-header p {
            color: #475569;
            font-size: 14px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-size: 13px;
            font-weight: 500;
            color: #94a3b8;
            margin-bottom: 8px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        input {
            width: 100%;
            padding: 12px 16px;
            background: #0f1117;
            border: 1px solid #2d3748;
            border-radius: 10px;
            color: #e2e8f0;
            font-size: 15px;
            font-family: 'Inter', sans-serif;
            transition: border-color 0.2s, box-shadow 0.2s;
            outline: none;
        }
        input:focus {
            border-color: #6366f1;
            box-shadow: 0 0 0 3px rgba(99,102,241,0.15);
        }
        input::placeholder { color: #334155; }
        .btn-submit {
            width: 100%;
            padding: 14px;
            background: #6366f1;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 15px;
            font-weight: 600;
            font-family: 'Inter', sans-serif;
            cursor: pointer;
            transition: all 0.2s;
            margin-top: 8px;
        }
        .btn-submit:hover {
            background: #5558e3;
            transform: translateY(-1px);
            box-shadow: 0 8px 25px rgba(99,102,241,0.35);
        }
        .btn-submit:active { transform: translateY(0); }
    </style>
</head>
<body>
<div class="card">
    <div class="card-header">
        <a href="books" class="back-link">← Back to Library</a>
        <h2>📖 Add New Book</h2>
        <p>Fill in the details to add a book to the library</p>
    </div>
    <form action="books" method="post">
        <div class="form-group">
            <label>Book Title</label>
            <input type="text" name="title" placeholder="e.g. Clean Code" required />
        </div>
        <div class="form-group">
            <label>Author Name</label>
            <input type="text" name="author" placeholder="e.g. Robert C. Martin" required />
        </div>
        <div class="form-group">
            <label>Available Copies</label>
            <input type="number" name="availableCopies" placeholder="e.g. 5" min="1" required />
        </div>
        <button type="submit" class="btn-submit">Add Book to Library</button>
    </form>
</div>
</body>
</html>