<%@ page import="sun.net.NetProperties" %>
<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>

<div class="cardRow hpCsrBg"
     style='background-image: url(${properties.fileReference}); padding: 10px 10px 257px 10px'>
    <div class="col">
        <div class="sliderWrapper">
            <cq:text property="title" tagName="h2" default="Corporate Social Responsibilities" />

            <div class="subHead">
                <cq:text property="subHeading" default="Intelligrape Pvt Ltd. is committed to the cause of Software development." />

            </div>
            <p>
                <cq:text property="desc"  tagName="p" default="The company provides mid-day meals to about 0,000 school children every day in around 3.50 government schools in Alwar district." />
            </p>

            <div class="buttonWrapper">
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i> Read More</span></a>
                </div>
            </div>
        </div>
    </div>
    <div class="col">&nbsp;</div>
</div>
<div style="clear: both;"></div>