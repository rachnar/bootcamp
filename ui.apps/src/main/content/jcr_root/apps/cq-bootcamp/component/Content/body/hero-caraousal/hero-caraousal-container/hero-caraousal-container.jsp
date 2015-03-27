<%@include file="/apps/cq-bootcamp/global.jsp"%>
<%@page session="false" import="com.day.cq.wcm.api.WCMMode"%>
<c:if test= "${mode}">
    <c:set var="set" value="slick-slider"/>
</c:if>

<br>
<cq:text placeholder="hero caraousel"/>
<div class="spotlightWrapper">
    <div class="${set}">

		 <c:forEach var="slide" begin="1" end="${properties.slides}">
             <cq:include path="${slide}" resourceType="cq-bootcamp/component/Content/body/hero-caraousal/hero-caraousal-slide"/>
	</c:forEach>
    </div>
</div>

<div style="clear:both;"></div>