<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
            width: 100%;
            height: 1000px;
            display: flex;
            flex-direction: row;
            justify-content: center;
        }
        #wrap{
            height: 1024px;
            display: flex;
            flex-direction: column;
            margin: 0 auto;
        }
        header{
            line-height: 80px;
            text-align: center;
            width: 1024px;
        }
        header h2{
            line-height: 80px;
            text-align: center;
            width: 1024px;
            height: 80px;
            color: white;
            background-color: #0000CC;
        }
        nav ul{
            width: 1024px;
            height: 50px;
            display: flex;
            flex-direction: row;
            list-style: none;
            background-color: #CC99CC;
            
        }
        nav ul li,a{
            margin-left: 5px;
            margin-right: 30px;
            color: white;
            line-height: 50px;
            text-decoration: none;
        }
        section{
            width: 1024px;
            height: 800px;
            background-color: #999999;
        }
        footer{
            background-color: #3333FF;
            text-align: center;
            line-height: 50px;
            color: white;
            height: 50px;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <header>
            <h2>쇼핑몰 회원관리 ver1.0</h2>
        </header>
        <nav>
            <ul>
                <li><a href="Registration.jsp">회원등록</a></li>
                <li><a href="UserList.jsp">회원목록조회/수정</a></li>
                <li><a href="SaleList.jsp">회원매출조회</a></li>
                <li><a href="index.jsp">홈으로.</a></li>
            </ul>
        </nav>
        <section>

        </section>
        <footer>
            <h4>HRDKOREA Copyright 2016 All -----</h4>
        </footer>
    </div>
</body>
</html>