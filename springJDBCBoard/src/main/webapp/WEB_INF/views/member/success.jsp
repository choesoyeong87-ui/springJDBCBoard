<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>가입 완료 - Welcome!</title>
    <style>
        /* 기본 배경 및 폰트 설정 */
        body {
            font-family: 'Pretendard', -apple-system, sans-serif;
            background-color: #fff5eb;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        /* 메인 카드 컨테이너 */
        .success-card {
            background-color: #ffffff;
            padding: 50px 40px;
            border-radius: 25px;
            box-shadow: 0 15px 40px rgba(255, 107, 0, 0.12);
            width: 90%;
            max-width: 400px;
            text-align: center;
            position: relative;
        }

        /* 성공 체크 아이콘 */
        .icon-box {
            width: 70px;
            height: 70px;
            background-color: #ff6b00;
            color: white;
            font-size: 35px;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
            margin: 0 auto 20px;
            box-shadow: 0 8px 20px rgba(255, 107, 0, 0.25);
            animation: pop 0.6s cubic-bezier(0.175, 0.885, 0.32, 1.275);
        }

        @keyframes pop {
            0% { transform: scale(0); }
            100% { transform: scale(1); }
        }

        h1 { color: #333; font-size: 26px; margin-bottom: 15px; }
        
        /* 메시지 텍스트 */
        .msg-text {
            color: #666;
            line-height: 1.6;
            margin-bottom: 35px;
            font-size: 15px;
        }

        /* 버튼 그룹 */
        .btn-group {
            width: 100%;
            margin-bottom: 30px;
        }

        .main-btn {
            display: block;
            width: 100%;
            padding: 16px;
            background-color: #ff6b00;
            color: white !important;
            border-radius: 12px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s;
            box-sizing: border-box;
        }

        .main-btn:hover {
            background-color: #e66000;
            box-shadow: 0 5px 15px rgba(255, 107, 0, 0.3);
        }

        /* 탈퇴하기 영역 (카드 안쪽 하단에 배치) */
        .withdrawal-section {
            margin-top: 25px;
            padding-top: 20px;
            border-top: 1px solid #f0f0f0;
        }

        .withdrawal-section p {
            font-size: 12px;
            color: #aaa;
            margin-bottom: 8px;
        }

        .btn-withdrawal {
            background: none;
            border: none;
            color: #ccc;
            font-size: 12px;
            text-decoration: underline;
            cursor: pointer;
            transition: color 0.2s;
            padding: 5px;
        }

        .btn-withdrawal:hover {
            color: #ff4444;
        }
    </style>
</head>
<body>

<div class="success-card">
    <div class="icon-box">✓</div>
    <h1>환영합니다!</h1>
    
    <p class="msg-text">${message}</p>
 
    <div class="btn-group">
        <a href="/member/loginForm" class="main-btn">로그인 페이지로 이동</a>
    </div>

    <div class="withdrawal-section">
        <p>서비스를 더 이상 이용하지 않으시나요?</p>
        <button type="button" class="btn-withdrawal" onclick="confirmWithdrawal()">회원 탈퇴하기</button>
    </div>
</div>

<script>
    function confirmWithdrawal() {
        if (confirm("정말로 탈퇴하시겠습니까?\n탈퇴 시 모든 정보가 영구 삭제됩니다.")) {
            location.href = "/member/delete"; 
        }
    }
</script>

</body>
</html>