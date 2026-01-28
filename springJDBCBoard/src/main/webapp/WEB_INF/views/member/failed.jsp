<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        :root { --main-color: #ff6b00; --bg-color: #f9f9f9; }
        
        body {
            font-family: sans-serif;
            background-color: var(--bg-color);
            display: flex; justify-content: center; align-items: center;
            height: 100vh; margin: 0;
        }

        /* 공통 카드 스타일 */
        .card {
            background: white;
            padding: 2rem;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 100%; max-width: 350px;
            text-align: center;
        }

        /* 아이콘/이미지 영역 (필요 없으면 삭제 가능) */
        .status-icon {
            font-size: 3rem; color: var(--main-color); margin-bottom: 1rem;
        }

        h2 { margin: 0 0 1rem; color: #333; }
        p { color: #666; font-size: 0.95rem; line-height: 1.5; margin-bottom: 1.5rem; }

        /* 공통 버튼 */
        .btn {
            display: block;
            width: 100%; padding: 12px;
            background-color: var(--main-color);
            color: white; border: none; border-radius: 6px;
            font-size: 1rem; font-weight: bold;
            cursor: pointer; text-decoration: none;
            transition: opacity 0.2s;
        }

        .btn:hover { opacity: 0.8; }
        
        /* 보조 링크 스타일 */
        .link { margin-top: 1rem; display: block; color: #999; font-size: 0.8rem; text-decoration: none; }
    </style>
</head>
<body>

<div class="card">
    <div class="status-icon">●</div> <h2>${message}</h2>
    
    <a href="#" class="btn">확인</a>
    <button type="button" class="link" onclick="history.back()">back</button>
</div>

</body>
</html>