<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 - Orange Style</title>
    <style>
        body {
            font-family: 'Pretendard', sans-serif;
            background-color: #fff5eb;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .signup-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(255, 107, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h2 {
            text-align: center;
            color: #ff6b00;
            margin-bottom: 30px;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .input-group input {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        .input-group input:focus {
            outline: none;
            border-color: #ff6b00;
        }

        .signup-btn {
            width: 100%;
            padding: 14px;
            background-color: #ff6b00;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .signup-btn:hover {
            background-color: #e66000;
        }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>회원가입</h2>
    <form action="/member/insert" method="post" onsubmit="return validateForm()">
        
        <div class="input-group">
            <label for="id">아이디 (ID)</label>
            <input type="text" name="id" id="id" placeholder="아이디를 입력하세요" required>
        </div>
        <div class="input-group">
            <label for="pw">비밀번호 (PW)</label>
            <input type="password"name="pw" id="pw" placeholder="비밀번호를 입력하세요" required>
        </div>
        <div class="input-group">
            <label for="name">이름 (Name)</label>
            <input type="text" name="name" id="name" placeholder="성함을 입력하세요" required>
        </div>
        <button type="submit" class="signup-btn">가입하기</button>
    </form>
    <p class="footer-text">이미 계정이 있으신가요? <a href="/member/loginForm" style="color: #ff6b00; text-decoration: none;">로그인</a></p>
</div>

</body>
</html>