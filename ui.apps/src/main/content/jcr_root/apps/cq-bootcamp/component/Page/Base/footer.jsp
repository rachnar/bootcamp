<%@taglib prefix="cq" uri="http://www.day.com/taglibs/cq/1.0" %>


<footer>
    <div class="container">
        <div class="master">
            <div class="col">
                <cq:include path="footer1"
                            resourceType="/apps/cq-bootcamp/component/Content/footer/multiFooter"/>
            </div>
            <div class="col">
                <cq:include path="footer2"
                            resourceType="/apps/cq-bootcamp/component/Content/footer/multiFooter"/>
            </div>
            <div class="col">
                <cq:include path="footer3"
                            resourceType="/apps/cq-bootcamp/component/Content/footer/multiFooter"/>
            </div>
            <div class="col">
                <cq:include path="footer4"
                            resourceType="/apps/cq-bootcamp/component/Content/footer/multiFooter"/>
            </div>
            <div class="col">
                <cq:include path="footer5"
                            resourceType="/apps/cq-bootcamp/component/Content/footer/multiFooter"/>
            </div>

            <div class="col">
                <div class="linkWrapper">
                    <div class="footerWrapSocial">

                                <cq:include path="find-us-on-container" resourceType="/apps/cq-bootcamp/component/Content/footer/findUs"/>


                    </div>
                </div>
            </div>
        </div>
        <div class="copyRightWrapper">
            <div class="left">© Copyright 2015 by Intelligrape. All rights reserved</div>
        </div>
    </div>

</footer>
