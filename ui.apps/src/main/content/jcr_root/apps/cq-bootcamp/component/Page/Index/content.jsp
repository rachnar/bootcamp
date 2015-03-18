
<%@include file="/libs/foundation/global.jsp"%>





<cq:include path="spotlightParsys" resourceType="foundation/components/parsys"/>
<div class="homePageWrapper">
<div class="container">
<div class="master">


<cq:include path="cardrow_1Parsys" resourceType="foundation/components/parsys"/>

<cq:include path="cardrow_2Parsys" resourceType="foundation/components/parsys"/>
<cq:include path="imgbg" resourceType="/apps/cq-bootcamp/component/Content/body/imgBgComponent"/>
<cq:include path="imginfra" resourceType="/apps/cq-bootcamp/component/Content/body/infraComponent"/>

<div class="cardRow">
<div class="col havellsConnectBg">
<cq:include path="connect_component" resourceType="foundation/components/parsys"/>
    </div>



    <cq:include path="news&updates" resourceType="/apps/cq-bootcamp/component/Content/body/newsandupdates"/></div>
<div style="clear:both"></div>
</div>

</div>
</div>



    <script>


$(function(){
$('.spotlightWrapper .slick-slider').slick({
	dots: true,
	arrows:false
});
$('.havellsAtGlance .slick-slider').slick({
	dots: true,
	arrows:false
});
$('.hpCarouselBg .slick-slider').slick({
	dots: false,
	arrows:true
});
});
</script>