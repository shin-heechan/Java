<%@page import="Dao.HSPDao"%>
<%@page import="DTO.HSP"%>
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
        table tr td input{
            width: 200px;
        }
    
        table tr td button{
            width: 70px;
            margin-left: 10px;
        }
    </style>
  <%  
    	HSPDao dao = new HSPDao();
  		int custno = Integer.valueOf(request.getParameter("custno"));
    	HSP h = dao.selectUser(custno);
    	
    %>
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
            <form id="container" action="UpdateProcess.jsp" method="post" onsubmit="return formCheck(this);">
                <h2>홈쇼핑 회원 정보 수정</h2>
                <table>
                <tr>
                    <th>회원번호(자동발생)</th>
                    <td><input type="text" name="custno" readonly value="<%=h.getCustno()%>"></td>
                </tr>
                <tr>
                    <th>회원성명</th>
                    <td><input type="text" name="custname" value="<%=h.getCustname()%>"></td>
                </tr>
                <tr>
                    <th>회원전화</th>
                    <td><input type="text" name="phone" value="<%=h.getPhone()%>"  ></td>
                </tr>
                <tr>
                    <th>회원주소</th>
                    <td><input type="text" name="address" value="<%=h.getAddress()%>" ></td>
                </tr>
                <tr>
                    <th>가입일자</th>
                    <td><input type="text" name="joindate" value="<%=h.getJoindate()%>" ></td>
                </tr>
                <tr>
                    <th>고객등급[A:VIP,B:일반,C:직원]</th>
                    <td><input type="text" name="grade" value="<%=h.getGrade()%>" ></td>
                </tr>
                <tr>
                    <th>도시코드</th>
                    <td><input type="text" name="city" value="<%=h.getCity()%>" ></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button>수 정</button><button type="button" onClick="location.href='UserList.jsp'" >조 회</button></td>
                </tr>
                
                </table>
                   <script>
                
                function formCheck(frm){
        			if(frm.custname.value.length==0){
        				alert("회원성명을 입력해주세요.");
        				frm.custname.focus();
        				return false;
        			}
        			if(frm.phone.value.length==0){
        				alert("전화번호를 입력해주세요.");
        				frm.phone.focus();
        				return false;
        			}
        			if(frm.address.value.length==0){
        				alert("주소를 입력해주세요.");
        				frm.address.focus();
        				return false;
        			}
        			if(frm.joindate.value.length==0){
        				alert("가입일자를 입력해주세요.");
        				frm.joindate.focus();
        				return false;
        			}
					if(frm.grade.value.length==0){
        				alert("고객등급을 입력해주세요.");
        				frm.grade.focus();
        				return false;
        			}
					if(frm.city.value.length==0){
        				alert("도시코드를 입력해주세요.");
        				frm.city.focus();
        				return false;
        			}
        		}
        		
        		</script>

            </form>
        </section>
        <footer>
            <h4>HRDKOREA Copyright 2016 All -----</h4>
        </footer>
    </div>
</body>
</html>