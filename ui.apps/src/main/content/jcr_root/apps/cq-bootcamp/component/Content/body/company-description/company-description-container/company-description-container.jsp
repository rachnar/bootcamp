<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" import="com.day.cq.wcm.api.WCMMode" %>

<c:choose>
    <c:when test= "${mode}">
        <c:set var="set" value="slick-slider"/>
    </c:when>

    <c:otherwise>
        <c:set var="height" value="auto"/>
    </c:otherwise>
</c:choose>


<div class="cardRow">
    <div class="col havellsAtGlance" style="height:${height}">
        <div class="sliderWrapper">
            <div class="${set}">
                <c:forEach var="slide2" begin="1" end="${properties.slides}">
                    <cq:include path="${slide2}"
                                resourceType="/apps/cq-bootcamp/component/Content/body/company-description/company-description-slide"/>
                </c:forEach>
            </div>
        </div>
    </div>

    <div class="col" style="height:${height}"><cq:include path="customImage"
                                                          resourceType="/apps/cq-bootcamp/component/Content/body/customImage"/>
    </div>

</div>
<div style="clear:both;"></div>