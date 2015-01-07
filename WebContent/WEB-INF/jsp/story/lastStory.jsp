<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<div id="story-details">
	Story : 
	<c:forEach items="${stories}" var="story">
		 <a href="<c:url value="/story/view/${story.id }.do"/>">${story.label}</a>
	</c:forEach>
</div>
