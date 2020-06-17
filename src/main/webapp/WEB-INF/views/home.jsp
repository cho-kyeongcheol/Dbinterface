<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>

<style>
table {border:1px solid black;}
tr, th, td{border:1px solid black;} 
</style>
</head>
<body>
	<h1>Hello world!</h1>

	<P>The time on the server is ${serverTime}.</P>
	
	<div class="card card-warning">
              <div class="card-header">
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form role="form" action ="/admin/member/create" method="POST">
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">아이디</font></font></label>
                        <input name = "userid" type="text" class="form-control" placeholder="">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">비밀번호</font></font></label>
                        <input name = "userpw" type="password" class="form-control" placeholder="">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이름</font></font></label>
                        <input name = "username"  type="text" class="form-control" placeholder="">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이메일</font></font></label>
                        <input name = "email" type="text" class="form-control" placeholder="">
                      </div>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-block btn-primary">등록</button>
                </form>
			</div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          
	
	<table class="bbsListTbl" style="border:1px solid black;" summary="회원정보리스트">
		<caption class="hdd">회원정보 목록:제작자 - ${jspMaker}</caption>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">사용자ID</th>
				<th scope="col">사용자암호</th>
				<th scope="col">사용자이름</th>
				<th scope="col">사용자이메일</th>
				<th scope="col">사용자등록일</th>
				<th scope="col">사용자수정일</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
		
		<c:forEach items="${memberList}" var="memberVO" varStatus="status">
		<tr>		
		<td>${status.count}</td>
		<td>${memberVO.userid}</td>
		<td>${memberVO.userpw}</td>
		<td>${memberVO.username}</td>
		<td>${memberVO.email}</td>
		<td>${memberVO.regdate}</td>
		<td>${memberVO.updatedate}</td>
		<td>
		<form action="/admin/member/delete" method="POST">
		<input type="text" value="${memberVO.userid}" name="userid">
		<input type="submit" value="삭제"></form>
		</td>
		</tr>
		</c:forEach> 
			
		</tbody>
	</table>
	
</body>
</html>
