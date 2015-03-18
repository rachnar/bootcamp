<%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %>

        <div class="havellsConnectOptionWrapper">
            <ul>
                <c:forEach var="comp" begin="1" end='${properties.nam != null ? properties.nam : "3"}'>
            <cq:include path="${comp}" resourceType="/apps/cq-bootcamp/component/Content/body/connect_component/connect"/>
	</c:forEach>
            </ul>
        </div>
