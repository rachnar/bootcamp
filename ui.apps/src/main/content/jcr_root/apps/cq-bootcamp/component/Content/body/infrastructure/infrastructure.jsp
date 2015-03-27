<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>
<cq:text placeholder="infra"/>
<div class="cardRow">
    <div class="col">
        <img src='${properties.fileReference}' alt="building" style="width: 100% ; height:268px">

    </div>
    <div class="col infraBg">
        <div class="sliderWrapper">
            <h2><cq:text property="title"  tagName="h2" default="Infrastructure" />
           </h2>

            <cq:text property="description"  tagName="p" default="Infrastructure" />

            <div class="infraRow">
                <ul>
                    <li>
                        <div class="numbers">
                            <cq:text property="country" default="50" /></div>
                        <div class="label">Countries</div>
                    </li>
                    <li>
                        <div class="numbers">
                            <cq:text property="branch" default="91" /></div>
                        <div class="label">Branch Offices</div>
                    </li>
                    <li>
                        <div class="numbers">
                            <cq:text property="units" default="91" /></div>
                        <div class="label">Manufacturing Units&nbsp;Worldwide</div>
                    </li>
                    <li>
                        <div class="numbers">
                            <cq:text property="network" default="91,000" /></div>
                        <div class="label">Distribution Network</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div style="clear: both;"></div>