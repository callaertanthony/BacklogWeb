<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt" %>

<c:forEach items="${latest}" var="todo">
	<a href="todo/${todo.id}.do">${todo.id}</a> - ${todo.text} - 
	<fmt:formatDate value="${todo.updatedDate}" pattern="dd/MM/yyyy"/><br/>
</c:forEach>