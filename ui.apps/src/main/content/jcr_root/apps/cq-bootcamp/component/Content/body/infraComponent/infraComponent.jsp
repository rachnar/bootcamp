<%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>

<div class="cardRow">
    <div class="col">
        <img src='${properties.fileReference}' alt="building" style="width: 100% ; height:268px">

    </div>
    <div class="col infraBg">
        <div class="sliderWrapper">
            <h2>${(properties.title != null ? properties.title : "Infrastructure")}</h2>
            <%--<p>Intelligrape entered software development business in mid-2003 and has emerged as--%>
                <%--one of the fastest growing Fan brand in the Indian market. Intelligrape--%>
                <%--has captured the customer's fancy with innovative...</p>--%>
            <p>${(properties.description!= null ? properties.description :"0")}</p>
            <div class="infraRow">
                <ul>
                    <li>
                        <div class="numbers">${(properties.country != null ? properties.country :"50")}</div>
                        <div class="label">Countries</div>
                    </li>
                    <li>
                        <div class="numbers">${(properties.branch != null ? properties.branch :"91")}</div>
                        <div class="label">Branch Offices</div>
                    </li>
                    <li>
                        <div class="numbers">${(properties.unit != null ? properties.units :"21")}</div>
                        <div class="label">Manufacturing Units&nbsp;Worldwide</div>
                    </li>
                    <li>
                        <div class="numbers">${(properties.network != null ? properties.network :"20,000")}</div>
                        <div class="label">Distribution Network</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div style="clear: both;"></div>