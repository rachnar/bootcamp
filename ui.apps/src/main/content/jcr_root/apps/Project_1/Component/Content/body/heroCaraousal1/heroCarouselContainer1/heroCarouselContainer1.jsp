<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" import="com.day.cq.wcm.api.WCMMode"%>


<% 
    WCMMode mode= WCMMode.fromRequest(request);
if(mode.toString().equals("PREVIEW"))
{
%>

<c:set var="set" value="slick-slider" />

<%
}
%>


<br>

<div class="spotlightWrapper">
    <div class="${set}">

		 <c:forEach var="slide" begin="1" end="${properties.nam}">
             <cq:include path="${slide}" resourceType="/apps/Project_1/Component/Content/body/heroCaraousal1/heroCaraousalSlide1"/>
	</c:forEach>
    </div>
</div>

<div style="clear:both;"></div>