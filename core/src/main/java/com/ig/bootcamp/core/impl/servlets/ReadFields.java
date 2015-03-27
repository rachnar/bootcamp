
package com.ig.bootcamp.core.impl.servlets;
import com.day.cq.commons.Console;
import com.day.cq.wcm.api.NameConstants;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Properties;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.resource.Resource;
import org.apache.sling.api.resource.ResourceResolver;
import org.apache.sling.api.resource.ValueMap;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;
import org.apache.sling.commons.json.JSONArray;
import org.apache.sling.commons.json.JSONException;
import org.apache.sling.commons.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.servlet.Servlet;
import java.io.IOException;
import java.io.PrintWriter;

@Component(name="quick-links component", description="this is a component to fetch custom multifield", immediate = true ,metatype = true)
@Service(Servlet.class)
@Properties({
        @Property(name="sling.servlet.paths",value = "/bin/service/select"),
}
)

public class  ReadFields  extends SlingSafeMethodsServlet {

    protected void doGet(SlingHttpServletRequest request,
                         SlingHttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        JSONObject jsonObject=new JSONObject();
        JSONArray jsonArray = new JSONArray();
        JSONObject obj;
        PrintWriter pw=response.getWriter();
        //String state=request.getParameter("state");
        //String city=request.getParameter("city");
        try
        {
            String path= "/etc/designs/default/jcr:content/Index/quick-links/sublinks" ;


            ResourceResolver resourceResolver= request.getResourceResolver();
            Resource resource =resourceResolver.getResource(path);
            for(Resource child : resource.getChildren())
            {
                ValueMap valueMap=child.adaptTo(ValueMap.class);

                 obj= new JSONObject();

                    String icon=valueMap.get("icon").toString();
                    String linkname=valueMap.get("linkName").toString();
                     String URL=valueMap.get("url").toString();

                        obj.put("icon",icon);
                        obj.put("linkname",linkname);
                        obj.put("URL",URL);
                        jsonArray.put(obj);
                jsonObject.put("subchild", jsonArray);
             }
         }




        catch (Exception e)
        {
            pw.print("exception"+e);
        }
        response.getWriter().write(jsonObject.toString());
    }
}