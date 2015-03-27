<%@include file="/libs/foundation/global.jsp"%>
<%@page session="false" %>


	<div class="footerWrapSocial">
    	<div class="socialWrap">
        	<div>Find us on:</div>
            	<ul>
                    <c:if test="${currentStyle.facebook == true}">
						<li><a href="javascript:;"><i class='fa fa-facebook fa-2x'></i></a></li>
                    </c:if>
					<c:if test="${currentStyle.twitter == true}">
						<li><a href="javascript:;"><i class='fa fa-twitter fa-2x'></i></a></li>
                    </c:if>
					<c:if test="${currentStyle.youtube == true}">
						<li><a href="javascript:;"><i class='fa fa-youtube fa-2x'></i></a></li>
                    </c:if>

                </ul>
        </div>

    </div>
