package com.ig.bootcamp.core.impl.servlets;


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



@Component(name="rss component", description="this is a component", immediate = true ,metatype = true)
@Service(Servlet.class)
@Properties({
        @Property(name="sling.servlet.paths",value = "/bin/service/rss"),
        @Property(name="sling.servlet.selectors",value = "hello")
}
)
public class NewsFeed  extends SlingSafeMethodsServlet {


    protected void doGet(SlingHttpServletRequest request,
                         SlingHttpServletResponse response) throws IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        JSONObject jsonObject=new JSONObject();
        JSONArray jsonArray = new JSONArray();
        JSONObject obj;
        ResourceResolver resourceResolver= request.getResourceResolver();
        PrintWriter pw=response.getWriter();
        Resource resource =resourceResolver.getResource("/content/cqWebsite/2015");

        int val=Integer.parseInt( request.getParameter("arg0"));

        //pw.print(request.getParameter("arg0"));

        try
        {
            for(Resource child : resource.getChildren()){

                //ValueMap contentProps = child.adaptTo(ValueMap.class);
                // pw.print(contentProps.get("jcr:title", child.getName()));
                for(Resource date : child.getChildren()){

                    ValueMap valueMap= date.adaptTo(ValueMap.class);
                    if("cq:Page".equals(valueMap.get("jcr:primaryType")))
                    {
                        //pw.print("*******************************"+date.getChild("jcr:content")+"******************");
                        Resource content=date.getChild("jcr:content");
                        ValueMap map=content.adaptTo(ValueMap.class) ;

                        String str=map.get("jcr:title" ).toString();
                        String id=map.get("id" ).toString();
                        // pw.print("*"+str+"\n"+id);
                        //pw.print("\n"+"\n");
                        obj= new JSONObject();

                        obj.put("name",str );
                        obj.put("id",id)   ;
                        //pw.print(obj);

                        jsonArray.put(obj);

                    }   }



            }

            jsonObject.put("children", jsonArray);
               /* request.setAttribute("jsonObj",jsonObject);
                request.getRequestDispatcher("News-Feed.jsp").forward(request,response);
         */   }
        catch (JSONException e)
        {
            pw.print("exception");
        }


        // pw.print("<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<this is json object>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");

        //response.getWriter().write(jsonObject.toString());
        // pw.print("\n\n\n"+jsonArray.length());
        if((val==0) ||(jsonArray.length()>val) )
            response.getWriter().write(jsonObject.toString());
        else
        {
            jsonObject=new JSONObject();

            response.getWriter().write(jsonObject.toString());

        }
    }   }