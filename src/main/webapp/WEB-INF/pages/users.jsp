<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users page</title>
<style>

    ul.pag {
        display: inline-block;
        margin:0 auto;
        padding: 0;

    }

    ul.pag li {

        display: inline;
        border: 1px solid #808080;
        border-radius: 5%;
        color: black;
        background-color: #ededed ;
        float: left;
        font-size: 14px;
        padding: 8px 16px;
        text-decoration: none;
        link:color black


    }


    table a:link { color: #666;font-weight: bold;text-decoration:none;}
    table a:visited {color: #666;font-weight:bold;text-decoration:none;}
    table a:active,table a:hover { color: #bd5a35; text-decoration:underline;}
    ul a:link { color: black;font-weight: bold;text-decoration:none;}
    ul a:visited {color: #666;font-weight:bold;text-decoration:none;}
    ul a:active,table a:hover { color: #bd5a35; text-decoration:underline;}
    table { width:1200px; font-family:Arial, Helvetica, sans-serif;color:black;font-size:12px;text-shadow: 1px 1px 0px #fff;background:#eaebec; margin:0 auto; border:#808080 0.3px solid;
        -moz-border-radius:5px; -webkit-border-radius:5px;border-radius:5px;
        -moz-box-shadow: 0 1px 2px #d1d1d1; -webkit-box-shadow: 0 1px 2px #d1d1d1;box-shadow: 0 1px 2px #d1d1d1;}
    table th {padding:21px 25px 22px 25px; border-top:1px solid #fafafa; border-bottom:1px solid #e0e0e0;
        background: #ededed; background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));background: -moz-linear-gradient(top, #ededed, #ebebeb);}
    table th:first-child{text-align: left;padding-left:20px;}table tr:first-child th:first-child{ -moz-border-radius-topleft:3px; -webkit-border-top-left-radius:3px; border-top-left-radius:3px;}
    table tr:first-child th:last-child{ -moz-border-radius-topright:3px;-webkit-border-top-right-radius:3px;border-top-right-radius:3px;}
    table tr{text-align: center;padding-left:20px;}table tr td:first-child{ text-align: left;padding-left:20px;border-left: 0;}
    table tr td {padding:18px;border-top: 1px solid #ffffff;border-bottom:1px solid #e0e0e0;border-left: 1px solid #e0e0e0; background: #fafafa;background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));background: -moz-linear-gradient(top, #fbfbfb, #fafafa);}
    table tr.even td{background: #f6f6f6; background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));background: -moz-linear-gradient(top, #f8f8f8, #f6f6f6);}
    table tr:last-child td{ border-bottom:0;}
    table tr:last-child td:first-child{-moz-border-radius-bottomleft:3px;-webkit-border-bottom-left-radius:3px;border-bottom-left-radius:3px;}
    table tr:last-child td:last-child{-moz-border-radius-bottomright:3px;-webkit-border-bottom-right-radius:3px;border-bottom-right-radius:3px;}
    table tr:hover td{background: #f2f2f2;background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));background: -moz-linear-gradient(top, #f2f2f2, #f0f0f0);}


</style>
</head>
<body>

<h3 align="center" style="font-color: #666">Users List</h3>
<c:url var="searchuser" value="/searchresults"/>
<form:form action="${searchuser}" commandName="searcheduser">
    <table width="30%">
        <tr>
            <td><a style="font-color: black;margin-left: inherit" href="/adduser">Add User</a></td>
            <td>
                <form:input path="name"/>
                <input type="submit" name="action"  value="<spring:message text="Search"/>"/>
            </td>


        </tr>
    </table>
</form:form>
<br>

<c:if test="${!empty listUsers}">
    <table>

        <tr >

            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Admin</th>
            <th>Created date</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${listUsers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td><a href="/userdata/${user.id}" target="_blank">${user.name}</a></td>
                <td>${user.age}</td>
                <td>${user.admin}</td>
                <td>${user.createdDate}</td>
                <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
    <br>
</c:if>


   <center> <ul class="pag">
        <c:if test="${page > 1}">
        <li><a href="<c:url value="/users"><c:param name="page" value="${page - 1}"/>${page - 1}</c:url>">Previous</a></li>
        </c:if>
        <li><spring:message text="${page}"/></li>
        <c:if test="${!empty listUsers}">
        <li><a href="<c:url value="/users"><c:param name="page" value="${page + 1}"/>${page + 1}</c:url>">Next</a></li>
        </c:if>
    </ul>
   </center>




</body>
</html>
