package com.ig.bootcamp.core.impl.servlets;



import com.day.cq.workflow.WorkflowException;
import com.day.cq.workflow.WorkflowSession;
import com.day.cq.workflow.exec.WorkItem;
import com.day.cq.workflow.exec.WorkflowData;
import com.day.cq.workflow.exec.WorkflowProcess;
import com.day.cq.workflow.metadata.MetaDataMap;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.osgi.framework.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Component
@Service
public class NodeCreate implements WorkflowProcess {
    @Property(value = "An example workflow process implementation.")
    static final String DESCRIPTION = Constants.SERVICE_DESCRIPTION;
    @Property(value = "Adobe")
    static final String VENDOR = Constants.SERVICE_VENDOR;
    @Property(value = "Create node")
    static final String LABEL="process.label";


    protected static final Logger log = LoggerFactory.getLogger(NodeCreate.class);

    @Override
    public void execute(WorkItem workItem, WorkflowSession workflowSession, MetaDataMap metaDataMap) throws WorkflowException {
        log.error("\n----workitem == "+workItem);

        WorkflowData data = workItem.getWorkflowData();
        log.error("\n----data == " + data);

        String paylod = data.getPayload().toString();
        log.error("\n----payload =="+paylod);
        //To change body of implemented methods use File | Settings | File Templates.
    }
}