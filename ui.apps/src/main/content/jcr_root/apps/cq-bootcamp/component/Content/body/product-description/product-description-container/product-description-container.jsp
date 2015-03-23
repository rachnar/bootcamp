<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" import="com.day.cq.wcm.api.WCMMode" %>

<cq:text placeholder="product description"/>
<%
    WCMMode mode = WCMMode.fromRequest(request);
    if (mode.toString().equals("PREVIEW")) {
%>

<c:set var="set" value="slick-slider"/>

<%
    }
%>


<br>

<div class="cardRow hpCarouselBg">
    <div class="${set}">

        <c:forEach var="slide2" begin="1" end="${properties.slides}">
            <cq:include path="${slide2}"
                        resourceType="cq-bootcamp/component/Content/body/product-description/product-description-slide"/>

        </c:forEach>
    </div>
</div>

<div style="clear:both;"></div>