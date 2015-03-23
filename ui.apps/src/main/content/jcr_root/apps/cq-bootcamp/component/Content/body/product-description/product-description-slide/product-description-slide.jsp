<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>


<div class="slick-slide" style='display:block'>
    <div class="col"><img src='${properties.fileReference}' id="prdThumb" alt="">

        <div class="hpCarouselBgIcon ${properties.icon}"></div>
    </div>
    <div class="col">
        <div class="sliderWrapper">
            <h2>
                <cq:text value="${properties.title}"  tagName="h2" default="Products" />

            <div class="subHeadWrap">
                <div class="subHead">
                    <cq:text value="${properties.subHeading}"  default="Appliances" />
               </div>
            </div>
                    <cq:text value="${properties.desc}" tagName="p" default="Welcome to the world of fresh living with our range of domestic
                    appliances. These appliances will help you discover the joy of fresh
                    eating and living..." />
            <div class="buttonWrapper">
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i> Read More</span></a>
                </div>
                <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i> View Range</span></a>
                </div>
            </div>
        </div>
    </div>
</div>

<div style="clear: both;"></div>