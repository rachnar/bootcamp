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
else
{
%>
<c:set var="height" value="auto"/>
<%}%>

 <div class="cardRow">
     <div class="col havellsAtGlance" style="height:${height}">
 <div class="sliderWrapper">
 <div class="${set}">
      <c:forEach var="slide2" begin="1" end="${properties.nam}">
      <cq:include path="${slide2}" resourceType="/apps/cq-bootcamp/component/Content/body/cardrow_1/cardrow_1Slide"/>
      </c:forEach>
 </div>
 </div>
 </div>

<div class="col" style="height:${height}"><cq:include path="customImage" resourceType="/apps/cq-bootcamp/component/Content/body/customImage"/>
    </div>

</div>
  <div style="clear:both;"></div>