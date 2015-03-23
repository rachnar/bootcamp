package com.ig.bootcamp.core.impl.servlets;


import com.day.cq.commons.jcr.JcrConstants;
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

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;


@Component(name = "rss component", description = "this is a component", immediate = true, metatype = true)
@Service(Servlet.class)
@Properties({
        @Property(name = "sling.servlet.paths", value = "/bin/service/rss"),
        @Property(name = "sling.servlet.selectors", value = "hello")
}
)
public class NewsFeed extends SlingSafeMethodsServlet {



    protected void doGet(SlingHttpServletRequest request,
                         SlingHttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        JSONObject jsonObject = new JSONObject();
        JSONArray jsonArray = new JSONArray();
        JSONObject obj;
        ResourceResolver resourceResolver = request.getResourceResolver();
        PrintWriter pw = response.getWriter();
        Resource resource = resourceResolver.getResource("/content/cqWebsite/2015");

        int val = Integer.parseInt(request.getParameter("arg0"));
        try {
            for (Resource child : resource.getChildren()) {


                for (Resource date : child.getChildren()) {

                    ValueMap valueMap = date.adaptTo(ValueMap.class);
                    if(NameConstants.NT_PAGE.equals(valueMap.get(JcrConstants.JCR_PRIMARYTYPE))) {

                        Resource content = date.getChild("jcr:content");
                        ValueMap map = content.adaptTo(ValueMap.class);

                        String str = map.get("jcr:title").toString();
                        String id = map.get("id").toString();

                        obj = new JSONObject();

                        obj.put("name", str);
                        obj.put("id", id);


                        jsonArray.put(obj);

                    }
                }


            }

            jsonObject.put("children", jsonArray);

        } catch (JSONException e) {
            pw.print("exception");
        }


        if ((val == 0) || (jsonArray.length() > val))
            response.getWriter().write(jsonObject.toString());
        else {
            jsonObject = new JSONObject();

            response.getWriter().write(jsonObject.toString());

        }
    }
}