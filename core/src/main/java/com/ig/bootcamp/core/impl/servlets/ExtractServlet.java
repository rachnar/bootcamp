package com.ig.bootcamp.core.impl.servlets;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.felix.scr.annotations.*;


import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ResourceResolver;
import org.apache.sling.api.resource.ValueMap;
import org.apache.sling.api.servlets.SlingAllMethodsServlet;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;
import javax.servlet.Servlet;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;


@Component(immediate = true)
@Service(Servlet.class)

@Properties({
        @Property(name="sling.servlet.paths",value="/bin/services/shiv1")  ,
})

public class ExtractServlet extends SlingSafeMethodsServlet{



    protected void doGet(final SlingHttpServletRequest req,
                         final SlingHttpServletResponse resp) throws ServletException, IOException {

        ResourceResolver resourceResolver= req.getResourceResolver();
        PrintWriter pw=resp.getWriter();
        Resource resource =resourceResolver.getResource("/content/rach/pageComponent/INTELLIGRAPE");
        ValueMap map=resource.adaptTo(ValueMap.class);
        pw.print(map);
        pw.print(map.get("jcr:primaryType"));
        pw.println(map.get("jcr:createdBy"));
        pw.println(map.get("jcr:lastModifiedBy"));

    }
}
