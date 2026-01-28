<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Member List</title>
    <style>
    :root { --main-orange: #ff8c00; --hover-orange: #fff5eb; }

    /* 기본 레이아웃 */
    .list-container { padding: 30px; background-color: #fdfaf5; min-height: 100vh; }
    .card { 
        background: #fff; border-radius: 15px; border: none; 
        box-shadow: 0 8px 30px rgba(0,0,0,0.05); padding: 25px; 
    }
    
    .table-title { color: var(--main-orange); font-weight: 800; }

    /* 검색 영역 */
    .search-area { display: flex; gap: 10px; align-items: center; }
    .search-select { 
        padding: 8px 12px; border: 1px solid #ddd; border-radius: 8px; 
        outline: none; color: #555;
    }
    .search-input-wrapper { position: relative; display: flex; align-items: center; }
    .search-icon { position: absolute; left: 12px; color: #aaa; }
    .search-input { 
        padding: 8px 12px 8px 35px !important; border-radius: 8px !important; 
        border: 1px solid #ddd !important; width: 200px;
    }
    .search-input:focus { border-color: var(--main-orange) !important; }

    /* 테이블 스타일 */
    .table { margin-top: 20px; vertical-align: middle; }
    .table thead { background-color: var(--main-orange); color: white; }
    .table th { border: none; padding: 15px; text-align: center; }
    .table td { padding: 15px; text-align: center; border-bottom: 1px solid #f1f1f1; }
    .table tbody tr:hover { background-color: var(--hover-orange); transition: 0.2s; }

    .id-text { font-weight: 600; color: #333; }
    .pw-text { color: #ccc; letter-spacing: 2px; }
    .name-badge { 
        background: var(--hover-orange); color: var(--main-orange); 
        padding: 4px 10px; border-radius: 20px; font-weight: 600; 
    }
</style>

<div class="list-container">
    <div class="card">
        <div class="d-flex justify-content-between align-items-end mb-4">
            <div>
                <h2 class="table-title mb-1">전체 회원 관리</h2>
                <p class="text-muted small m-0">회원번호, 아이디, 비밀번호, 이름 정보를 관리합니다.</p>
            </div>
            
            <form action="/member/search" method="get" class="search-area">
                <select name="searchType" class="search-select">
                    <option value="id">아이디</option>
                    <option value="name">이름</option>
                </select>
                
                <div class="search-input-wrapper">
                    <span class="search-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>
                    </span>
                    <input type="text" name="keyword" class="form-control shadow-none search-input" placeholder="검색어 입력">
                </div>
            </form>
        </div>

        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th style="width: 15%;">회원번호 (No)</th>
                        <th style="width: 25%;">아이디 (ID)</th>
                        <th style="width: 25%;">비밀번호 (PW)</th>
                        <th style="width: 20%;">이름 (Name)</th>
                        <th style="width: 15%;">관리</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="member" items="${memberList}">
                        <tr>
                            <td>${member.no}</td>
                            <td><span class="id-text">${member.id}</span></td>
                            <td><span class="pw-text">••••••</span></td>
                            <td><span class="name-badge">${member.name}</span></td>
                            <td>
                                <a href="/member/updateForm"><button type="button" class="btn btn-sm btn-outline-warning" 
                                        style="border-color: var(--main-orange); color: var(--main-orange);">
                                    수정
                                </button></a>
                            </td>
                        </tr>
                    </c:forEach>
                    
                    <c:if test="${empty memberList}">
                        <tr>
                            <td colspan="5" class="text-center py-5 text-muted">등록된 회원이 없거나 검색 결과가 없습니다.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>
</div>
</html>