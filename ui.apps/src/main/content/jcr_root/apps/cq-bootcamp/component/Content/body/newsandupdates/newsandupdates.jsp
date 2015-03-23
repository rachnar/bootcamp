<%@include file="/apps/cq-bootcamp/global.jsp" %>
<%@page session="false" %>

<cq:text placeholder="news and updates"/>
<script>
    $(document).ready(function () {

        setTimeout(function () {
            var el  = $("#t1").val();

            $.ajax({


                type: "GET",
                url: "/bin/service/rss?arg0=" + el,


                dataType: "json",


                success: function (data) {

                    $.each(data.children, function (i, item) {
                        $("#news").append("<li><a href=" + item.id + ">" + item.name + "<span>" + $.datepicker.formatDate('d M yy', new Date()) + "</span></a></li>");
                        $("#length").val(data.children.length);
                    });

                },
                error: function () {
                    alert("error occured!!!" + el);
                }
            });
        }, 3000);
    });

</script>
<div class="col newsAndUpdates" style="overflow-y:auto; overflow-x:auto;height:267px;width:485px">
    <div class="newsWrap">
        <h2>News &amp; Updates</h2>
        <ul id="news">
        </ul>
        <input type="hidden" value="0" id="t1"/>

    </div>
</div>
<div style="clear:both"></div>