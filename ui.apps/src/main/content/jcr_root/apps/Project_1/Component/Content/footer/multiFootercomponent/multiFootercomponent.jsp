<%--

  MultiFIeld Footer Component component.

  this is the multifield component for the footer of ig page

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>


<div class="heading"><a href="javascript:;">${(properties.multiText != null ? properties.multiText :"Enter Title<br><br>")}</a></div>

<div class="linkWrapper">
    <c:forEach items="${properties.multiLink}" var="link" varStatus="loop">
    	<a href="javascript:;">${link}</a> 
	</c:forEach>
</div>
<div style="clear:both"></div>