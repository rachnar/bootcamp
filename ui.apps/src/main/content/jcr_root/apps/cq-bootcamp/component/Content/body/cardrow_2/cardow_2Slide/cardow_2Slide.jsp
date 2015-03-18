<%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>


            <div class="slick-slide"  style='display:block'>
              <div class="col"> <img src='${properties.fileReference}' id="prdThumb" alt="">
                  <div class="hpCarouselBgIcon ${properties.icon}"></div>
              </div>
              <div class="col">
                <div class="sliderWrapper">
                  <h2>${( properties.title != null ? properties.title : "Products") }</h2>
                  <div class="subHeadWrap">
                    <div class="subHead">${( properties.subHeading != null ? properties.subHeading : "Appliances") }</div>
                  </div>
                  <p>${ ( properties.desc != null ? properties.desc : "Welcome to the world of fresh living with our range of domestic
                    appliances. These appliances will help you discover the joy of fresh
                    eating and living...") } </p>
                  <div class="buttonWrapper">
                    <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i> Read More</span></a></div>
                    <div class="buttonGlbl"><a href="javascript:;"><span><i class="fa fa-arrow-right"></i> View Range</span></a></div>
                  </div>
                </div>
              </div>
            </div>

<div style="clear: both;"></div>