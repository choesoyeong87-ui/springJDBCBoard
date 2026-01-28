<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Orange Admin</title>
    <style>
        :root { --main-orange: #ff6b00; --hover-orange: #e66000; }

        body {
            font-family: 'Pretendard', sans-serif;
            background-color: #fffaf5;
            display: flex; justify-content: center; align-items: center;
            height: 100vh; margin: 0;
        }

        .login-card {
            background: #ffffff;
            width: 100%; max-width: 380px;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(255, 107, 0, 0.1);
            text-align: center;
        }

        .login-card h2 {
            color: var(--main-orange);
            font-size: 28px; font-weight: 800;
            margin-bottom: 30px;
        }

        .input-group {
            text-align: left;
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            font-size: 14px; color: #555;
            margin-bottom: 8px; font-weight: 600;
        }

        .input-group input {
            width: 100%; padding: 12px 15px;
            border: 2px solid #eee; border-radius: 10px;
            box-sizing: border-box; outline: none;
            transition: all 0.3s ease;
        }

        .input-group input:focus {
            border-color: var(--main-orange);
            background-color: #fff9f5;
        }

        .login-btn {
            width: 100%; padding: 14px;
            background-color: var(--main-orange);
            color: white; border: none; border-radius: 10px;
            font-size: 16px; font-weight: bold;
            cursor: pointer; transition: 0.3s;
            margin-top: 10px;
        }

        .login-btn:hover {
            background-color: var(--hover-orange);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(255, 107, 0, 0.3);
        }

        .login-footer {
            margin-top: 25px;
            font-size: 13px; color: #888;
        }

        .login-footer a {
            color: var(--main-orange);
            text-decoration: none; font-weight: 600;
        }

        .login-footer a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<div class="login-card">
    <h2>LOGIN</h2>
    <form action="/member/login" method="post">
        <div class="input-group">
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" required>
        </div>
        
        <div class="input-group">
            <label for="pw">비밀번호</label>
            <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요" required>
        </div>

        <button type="submit" class="login-btn">로그인</button>
    </form>

    <div class="login-footer">
        아직 회원이 아니신가요? <a href="/member/insertForm">회원가입</a>
    </div>
</div>

</body>
</html>