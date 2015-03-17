<%@taglib prefix="cq" uri="http://www.day.com/taglibs/cq/1.0" %>



<header>
    <div class="container">
      <div class="master">
        <div class="navWrapper">
            <div class="logo">
            <cq:include path="logo" resourceType="foundation/components/logo"/>
            </div>
               <div class="topRight">
            <div class="cartWrap">
                        <cq:include path="stock" resourceType="/apps/Project_1/Component/Content/header/stockComponent"/>
                    </div>
            <div class="mobileTrigger">
              <ul>
                <li class="frst"></li>
                <li class="scnd"></li>
                <li class="thrd"></li>
              </ul>
            </div>
                    <nav>

                   <cq:include path="Navigation" resourceType="/apps/Project_1/Component/Content/header/top_navigation"/>
                    </nav>

            </div>
            </div>
        </div>
    </div>
</header>