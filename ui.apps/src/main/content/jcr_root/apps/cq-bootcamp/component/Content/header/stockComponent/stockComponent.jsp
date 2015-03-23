<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>
  <cq:text placeholder="stock"/>
<ul>
    <li>
        <div class="label">${properties.stockName}</div>
        <div class="nseValue up">${properties.stockPrice}
            <i class="fa fa-arrow-up"></i></div>
    </li>
</ul>