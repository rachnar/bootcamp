package com.ig.bootcamp.core.impl.servlets;

import com.day.cq.commons.jcr.JcrUtil;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Properties;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.apache.felix.scr.annotations.sling.SlingServlet;
import org.apache.jackrabbit.rmi.client.ClientRepositoryFactory;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.resource.*;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;

import javax.jcr.*;
import javax.jcr.LoginException;
import javax.jcr.lock.LockException;
import javax.jcr.nodetype.ConstraintViolationException;
import javax.jcr.nodetype.NoSuchNodeTypeException;
import javax.jcr.version.VersionException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.rmi.NotBoundException;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;


@Component(immediate = true)
@Service(Servlet.class)
//SlingServlet(paths = "/bin/service/MyServlet",methods = "GET")
@Properties({
       @Property(name="sling.servlet.paths",value="/bin/services/rachna")
})
//@SlingServlet( paths = "sling/servlet/default",selectors = "hello", extensions = "html",methods = "GET")
public class CreateResourceServlet extends SlingSafeMethodsServlet  {
    @Override
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response) throws ServletException, IOException {

        PrintWriter out=response.getWriter();
        ResourceResolver resourceResolver = request.getResourceResolver();
        Session session=resourceResolver.adaptTo(Session.class);
        Resource resource=resourceResolver.getResource("/content/campaigns/geometrixx/jcr:content");
        Node node=resource.adaptTo(Node.class);

            try {
                node.addNode("mynode","nt:unstructured");
               // node.setProperty("jcr:primaryType","nt:unstructured");
                node.setProperty("jcr:title","my_node");
               // node.setProperty("name","rachna");
                //node.setProperty("jcr:createdBy",Calendar.getInstance());
                out.print("Node created!!!");
                session.save();

            }


            catch (RepositoryException e) {

                out.print("Node NOT created!!!");
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            }


        }




}