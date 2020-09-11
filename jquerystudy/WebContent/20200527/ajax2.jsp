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
	select * from member where id = ? and pass = ?
	<sql:param>${param.id }</sql:param>
	<sql:param>${param.pass }</sql:param>
</sql:query>
<c:if test="${!empty rs.rows }">	<!-- ���̵�� ��й�ȣ�� ��ġ�ϴ� ��� -->
	<h1>�ݰ����ϴ� ${rs.rows[0].name }��</h1>
</c:if>
<c:if test="${empty rs.rows }">	<!-- ���̵�� ��й�ȣ�� ��ġ���� �ʴ� ��� -->
	<h1>���̵� �Ǵ� ��й�ȣ�� Ʋ���ϴ�.</h1>
</c:if>