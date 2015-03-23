<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>


<div class="heading"><a
        href="javascript:;">
    <cq:text value="${currentStyle.multiText}" default="Enter Title<br><br>" />
        </a></div>

<div class="linkWrapper">
    <c:forEach items="${currentStyle.multiLink}" var="link" varStatus="loop">
        <a href="javascript:;">${link}</a>
    </c:forEach>
</div>
<div style="clear:both"></div>