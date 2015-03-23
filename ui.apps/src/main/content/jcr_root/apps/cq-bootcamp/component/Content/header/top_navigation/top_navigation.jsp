<%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" import="java.util.Iterator,com.day.text.Text,com.day.cq.wcm.api.PageFilter, com.day.cq.wcm.api.Page,com.day.cq.wcm.foundation.Navigation,com.day.cq.commons.Doctype" %><%
%>
<%

    // get starting point of navigation
    Page navRootPage = currentPage.getAbsoluteParent(1);

    if (navRootPage == null && currentPage != null) {
    navRootPage = currentPage;
    }

    if (navRootPage != null) {
        Iterator<Page> children = navRootPage.listChildren(new PageFilter(request));%>

<nav>
<ul>

    <%
        while (children.hasNext()) {


            %>


    <li style="height:97px">


        <%  Page child = children.next();


        currentPage=child;
%>







        <h5><a href="<%= child.getPath() %>.html"><%=child.getTitle() %></a></h5>

        <div class="subNavWrapper">
                    <div class="container">
                      <div class="master">
<%

 Page homePage = currentPage.getAbsoluteParent(3);

    String home = homePage != null ? homePage.getPath() : Text.getAbsoluteParent(currentPage.getPath(), 2);
    int absParent = currentStyle.get("absParent", 2);

    PageFilter filter = new PageFilter(request);
            // set abcParent to zero
    Navigation nav = new Navigation(currentPage, 0, filter, 3);
    String xs = Doctype.isXHTML(request) ? "/" : "";

    // help linkchecker to increase performance
    String linkCheckerHint = filter.isIncludeInvalid() ? "" : "x-cq-linkchecker=\"valid\"";

%>


        <ul>
          <li><a href="<%= xssAPI.getValidHref(home) %>.html"></a></li>
            <%
                for (Navigation.Element e: nav) {
                    switch (e.getType()) {
                       case NODE_OPEN:
                            %><ul><%
                            break;
                        case ITEM_BEGIN:
                            %><li <%= e.hasChildren() ? "class=\"noleaf\"" : "" %>><a href="<%= xssAPI.getValidHref(e.getPath()) %>.html" <%= linkCheckerHint %>><%= xssAPI.encodeForHTML(e.getTitle()) %></a><%
                            break;
                        case ITEM_END:
                            %></li><%
                            break;
                        case NODE_CLOSE:
                            %></ul><%
                            break;
                    }
                }
            %>

        </ul>
                        </div>
            </div>

        <% }%>
    </li>
    </ul>
    <%}%>

                </nav>
