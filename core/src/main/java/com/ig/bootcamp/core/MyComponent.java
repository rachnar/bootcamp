package com.ig.bootcamp.core;

import org.apache.felix.scr.annotations.Activate;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Reference;
import org.apache.felix.scr.impl.manager.ComponentContextImpl;

/**
 * Created with IntelliJ IDEA.
 * User: rahul
 * Date: 24/2/15
 * Time: 4:12 PM
 * To change this template use File | Settings | File Templates.
 */
@Component(immediate = true)
public class MyComponent {


    @Reference
    BootcampService1 bootcampService;

//    @Activate
//    protected void activate(ComponentContext)

}
