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

<div class="cardRow hpCarouselBg">
    <div class="${set}">

        <c:forEach var="slide2" begin="1" end="${properties.nam}">
             <cq:include path="${slide2}" resourceType="/apps/cq-bootcamp/component/Content/body/cardrow_2/cardow_2Slide"/>

        </c:forEach>
    </div>
</div>

<div style="clear:both;"></div>