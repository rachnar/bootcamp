<%@include file="/apps/cq-bootcamp/global.jsp" %>
<div style="clear:both;"></div>


<cq:include path="spotlightParsys" resourceType="foundation/components/parsys"/>

<div class="homePageWrapper">
    <div class="container">
        <div class="master">


            <cq:include path="home-wrapper" resourceType="foundation/components/parsys"/>
        </div>
    </div>

    </div>


<script>

        $(function () {
        $('.spotlightWrapper .slick-slider').slick({
            dots: true,
            arrows: false
        });
        $('.havellsAtGlance .slick-slider').slick({
            dots: true,
            arrows: false
        });
        $('.hpCarouselBg .slick-slider').slick({
            dots: false,
            arrows: true
        });
    });
</script>