package com.ig.bootcamp.core.impl.servlets;
import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Service;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;

import java.io.IOException;
import java.io.PrintWriter;


@SlingServlet(paths = "/bin/service/MyServlet", methods = "GET", label = "My Servlet")
public class MyServlet extends SlingSafeMethodsServlet {

    protected void doGet(SlingHttpServletRequest request,SlingHttpServletResponse response) throws IOException {
        PrintWriter out=response.getWriter();
        out.print(" hello services!!!");
    }
}
