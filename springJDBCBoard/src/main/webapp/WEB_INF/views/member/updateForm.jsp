<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div class="name-update-container">
    <style>
        .name-update-card {
            max-width: 380px;
            margin: 20px auto;
            padding: 30px;
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(255, 107, 0, 0.08);
            border: 1px solid #fff5eb;
        }

        .update-title {
            color: #ff6b00;
            font-size: 22px;
            font-weight: 800;
            margin-bottom: 8px;
            text-align: center;
        }

        .update-subtitle {
            font-size: 13px;
            color: #888;
            text-align: center;
            margin-bottom: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            font-weight: 600;
            color: #444;
            margin-bottom: 8px;
        }

        /* 현재 이름 (수정 불가 강조) */
        .current-name-display {
            background-color: #f9f9f9;
            padding: 12px;
            border-radius: 8px;
            color: #777;
            font-size: 15px;
            border: 1px dashed #ddd;
        }

        .form-control-name {
            width: 100%;
            padding: 12px;
            border: 2px solid #eee;
            border-radius: 8px;
            box-sizing: border-box;
            outline: none;
            font-size: 15px;
            transition: all 0.3s;
        }

        .form-control-name:focus {
            border-color: #ff6b00;
            background-color: #fffdfb;
        }

        .btn-save {
            width: 100%;
            padding: 14px;
            background-color: #ff6b00;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.2s;
        }

        .btn-save:hover {
            background-color: #e66000;
        }
    </style>

   <div class="name-update-card">
    <div class="update-title">이름 수정</div>
    
    <form action="/member/update" method="post">
       
 <div class="form-group">
            <label for="id">회원님의 id</label>
            <input type="text" id="id" name="id" class="form-control-name" 
                   th:value="${member.id}" required maxlength="10">
        </div>
        

        <div class="form-group">
            <label for="name">바꿀 이름</label>
            <input type="text" id="name" name="name" class="form-control-name" 
                   th:value="${member.name}" required maxlength="10">
        </div>

        <button type="submit" class="btn-save">변경사항 저장</button>
        <a href="/member/list" style="display:block; text-align:center; margin-top:15px; color:#999; text-decoration:none; font-size:13px;">취소하고 돌아가기</a>
    </form>
</div>
</html>