<%-- 
    Document   : viewpromotion
    Created on : Aug 1, 2020, 9:02:41 PM
    Author     : This PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h3>${order}</h3>
<!--        <table>
            <tr>
                <th>
                    id 
                </th>
                <th>
                    name 
                </th>
                <th>
                    price
                </th>
                <th>
                    Image
                </th>
                <th>
                    quantity 
                </th>
            </tr>
            <c:forEach var="promotion" items="${order}">

                <tr>
                    <td>
                        ${promotion.id}
                    </td>
                    <td>
                        ${promotion.name}
                    </td>
                    <td>
                        ${promotion.price}
                    </td>
                    <td>
                        ${promotion.urlImg}
                    </td>
                    <td>
                        ${promotion.quantity}
                    </td>
                </tr>

            </c:forEach>
        </table>-->
    </body>
</html>
