<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>


<div class="slick-slide" style='display:block'><img src='${properties.fileReference}' alt="sorry cudnt load!!!">

    <div class="spotlightContentLeft ${properties.color}">
        <div class="content">
            <div class="heading">${properties.title}</div>
            <cq:text value="${properties.desc}" tagName="p"
                     default="kkkk a brand story with a difference,result is an unusual set of products, offerings and deep connect with the end customer"/>


            <div class="buttonWrapper">
                <c:forEach items="${properties.buttonText}" var="link">
                    <div class="buttonGlbl"><a href="javascript:;"><span><i
                            class="fa fa-arrow-right"></i> ${link}</span></a></div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="spotlightContentRight pink"></div>
</div>
<div style="clear:both"></div>