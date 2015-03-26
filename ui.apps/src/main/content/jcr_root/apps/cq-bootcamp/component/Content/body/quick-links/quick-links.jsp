<%@ page import="org.apache.sling.api.resource.ResourceResolver" %>
<%@ page import="com.day.cq.wcm.foundation.forms.FormResourceEdit" %>
<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>


<cq:text placeholder="hello"/>
<div class="quickLinkWrapper">
    <ul>
        <li class="trigger"><div class="icon"><i class="fa fa-plus"></i></div><div class="label"><cq:text value="${currentStyle.headTitle}" default="Quick Links" /></div></li>

        <%
            Resource resource1=resourceResolver.getResource(currentStyle.getPath());
            Resource resource2 =  resource1.getChild("sublinks");
        %>
        <% for (Resource child : resource2.getChildren()) {




            ValueMap valueMap = child.adaptTo(ValueMap.class);

            String icon=valueMap.get("icon").toString();
            String linkname=valueMap.get("linkName").toString();
            String URL=valueMap.get("url").toString();
        %>


        <li><a href="<%= URL %>" target="_blank"><div class="icon"><i class="<%= icon %>"></i></div><div class="label"><%= linkname %></div></a></li>




        <%  }


        %>
    </ul>
</div>


