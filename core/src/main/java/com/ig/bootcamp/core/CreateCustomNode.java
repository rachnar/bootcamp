package com.ig.bootcamp.core;

import org.apache.felix.scr.annotations.Component;
import com.adobe.granite.workflow.WorkflowException;
import com.adobe.granite.workflow.WorkflowSession;
import com.adobe.granite.workflow.exec.WorkItem;
import com.adobe.granite.workflow.exec.WorkflowProcess;
import com.adobe.granite.workflow.metadata.MetaDataMap;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.osgi.framework.Constants;
import javax.jcr.Node;
import javax.jcr.RepositoryException;


import org.apache.felix.scr.annotations.Properties;
import java.text.SimpleDateFormat;
import java.util.Calendar;





@Component(label = "Create Node Process Up", metatype = false, immediate = true)
@Service(WorkflowProcess.class)
@Properties({
        @Property(name = Constants.SERVICE_DESCRIPTION, value = "Create Node DESCRIPTION"),
        @Property(name = Constants.SERVICE_VENDOR, value = "Create Node Vendor"),
        @Property(name = "process.label", value = " First Custom Workflow")
})
public class CreateCustomNode implements WorkflowProcess {


    @Override
    public void execute(WorkItem workItem, WorkflowSession workflowSession, MetaDataMap metaDataMap) throws WorkflowException

    {
        System.out.print("workflow executed.............********************************************************************");

        String path = workItem.getWorkflowData().getPayload().toString();
        System.out.print(path);


        try {
            Node node;


            node = (Node) workflowSession.getSession().getItem(path);
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("HH-mm-ss");
            String str = sdf.format(cal.getTime());
            node.addNode("" + str, "nt:folder");
            node.setProperty("jcr:title", "New Node");

        } catch (RepositoryException e) {
            System.out.print("Exception Raised");
            e.printStackTrace(System.out);

        } catch (Exception e) {
            System.out.print("Generic Exception");
            e.printStackTrace(System.out);

        }
    }
}
