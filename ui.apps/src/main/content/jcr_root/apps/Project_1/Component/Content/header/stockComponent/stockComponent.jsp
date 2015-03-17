<%--

  Stock Component component.

  this is the Stock Component for IG Havells project

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>

<ul>
    <li>
        <div class="label">${properties.stockName}</div>
        <div class="nseValue up">${properties.stockPrice} 
            <i class="fa fa-arrow-up"></i></div>
    </li>
</ul>