<%@include file="/apps/cq-bootcamp/global.jsp"%><%
%><%@page session="false" %>

<div class="col havellsConnectBg">
        <div class="havellsConnectOptionWrapper">
            <ul>
            <c:forEach var="comp" begin="1" end='${properties.slides != null ? properties.slides : "3"}'>
            <cq:include path="${comp}" resourceType="cq-bootcamp/component/Content/body/connect_component/connect"/>
	</c:forEach>
            </ul>
        </div>
    <div style="clear:both"></div>
</div>