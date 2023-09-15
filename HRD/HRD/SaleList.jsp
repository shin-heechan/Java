<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DTO.HSP"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.HSPDao"%>
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
        #container{
            margin: 0 auto;
            width: 800px;
            height: 500px;
        }
        #container h2{
            margin-top: 30px;
            width: 800px;
            height: 30px;
            text-align: center;
            line-height: 30px;
        }
        table{
            margin-top: 30px;
            width: 800px;
            border: 1px solid #ccc;
        }
        table tr th,td{
            border: 1px solid #ccc;
            padding: 5px;
            text-align: center;
        
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
           <div id="container">
                <h2>회원목록조회/수정</h2>
                <table>
                    <tr>
                        <th>회원번호</th>
                        <th>회원성명</th>
                        <th>고객등급</th>
                        <th>매출</th>
                        
                    </tr>
                <%
                HSPDao dao = new HSPDao (application);
                ArrayList<HSP> hsp = dao.selectSale();
                
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                for(int i=0; i<hsp.size(); i++){
                	System.out.print(hsp.get(i));
                %>   
                <tr>
                	<td><%= hsp.get(i).getCustno() %></td>
                	<td><%= hsp.get(i).getCustname() %></td>
                	<td><%= hsp.get(i).getGrade() %></td>
                	<td><%= hsp.get(i).getTotalPrice() %></td>
                	
                <%
                }
                %>
                </table>

           </div>
        </section>
        <footer>
            <h4>HRDKOREA Copyright 2016 All -----</h4>
        </footer>
    </div>
</body>
</html>