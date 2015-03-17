<%@ page import="sun.net.NetProperties" %>
<%--

  Image Background Component component.

  this is the component having a background image and text in front

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>

<div class="cardRow hpCsrBg" style='background-image: url( ${properties.fileReference != null ? properties.fileReference : "abc.jpg"}); padding: 10px 10px 257px 10px'>
    <div class="col">
        <div class="sliderWrapper">
            <h2> ${( properties.title != null ? properties.title : "Corporate Social Responsibilities") } </h2>
            <div class="subHead">
                ${( properties.subHeading != null ? properties.subHeading : "Intelligrape Pvt Ltd. is committed to the cause of Software development.") }
            </div>
                <p> ${ ( properties.get != null ? properties.desc : "The company provides mid-day meals to about 0,000 school children every day in around 3.50 government schools in Alwar district.") } </p>
            <div class="buttonWrapper">
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i> Read More</span></a></div>
            </div>
        </div>
    </div>
    <div class="col" >&nbsp;</div>
</div>
<div style="clear: both;"></div>