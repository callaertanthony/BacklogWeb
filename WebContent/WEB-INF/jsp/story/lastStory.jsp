<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<div class="list-group">
	<span class="list-group-item active">
		Latest stories modified
	</span>
	<c:forEach items="${stories}" var="story">
		<a  href="<c:url value="/story/view/${story.id }.do"/>" class="list-group-item">${story.label}</a>
	</c:forEach>
</div>
