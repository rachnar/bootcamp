<%--

  RSS_Feed component.



--%>

<%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>



<script>
$(document).ready(function()
{

setTimeout(function(){
     var el  = document.getElementById("t1").value;

     $.ajax({

         // value = document.getElementById("t1").
                type: "GET",
                url: "/bin/service/rss?arg0="+el,



                dataType: "json",


                //if received a response from the server
                success:  function (data) {

                $.each(data.children ,function(i,item){
         			$("#news").append("<li><a href=" + item.id + ">" + item.name + "<span>" + $.datepicker.formatDate('d M yy', new Date()) +  "</span></a></li>");
    		     	$("#length").val(data.children.length);
                });

                },
    error:function(){
                alert("error occured!!!"+el);
            },
            });
 },3000);
        });

</script> 
<div class="col newsAndUpdates"style="overflow-y:auto; overflow-x:auto;height:267px;width:485px">
            <div class="newsWrap">
              <h2>News &amp; Updates</h2>
              <ul id="news">
                </ul>
                <input type="hidden" value="0" id="t1" />

            </div>
          </div>