<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="UTF-8"/>
<!-- Connection ��ü ����� -->
<sql:setDataSource var="conn" driver="org.mariadb.jdbc.Driver"
	url="jdbc:mariadb://localhost:3306/classdb"
	user="scott" password="1234"/>
<sql:query var="rs" dataSource="${conn}">
	select * from member where id = ?
	<sql:param>${param.id }</sql:param>
</sql:query>
<c:if test="${!empty rs.rows }">	
	<h1 class="find">�����ϴ� ���̵��Դϴ�.</h1>
</c:if>
<c:if test="${empty rs.rows }">	
	<h1 class="notfind">ȸ�������� �� �� �ִ� ���̵��Դϴ�.</h1>
</c:if>
<%-- <c:if test="${rs.rows[0].id == param.id }">	
	<h1>�����ϴ� ���̵��Դϴ�.</h1>
</c:if>
<c:if test="${rs.rows[0].id != param.id }">	
	<h1>ȸ�������� �� �� �ִ� ���̵��Դϴ�.</h1>
</c:if> --%>