<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt" %>

<c:forEach items="${stories}" var="story">
	  ${story.label}<br/>
</c:forEach>