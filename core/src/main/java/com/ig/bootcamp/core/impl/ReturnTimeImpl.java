package com.ig.bootcamp.core.impl;
import com.ig.bootcamp.core.*;

import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Service;

import java.io.PrintWriter;

/**
 * Created with IntelliJ IDEA.
 * User: rahul
 * Date: 26/2/15
 * Time: 1:35 PM
 * To change this template use File | Settings | File Templates.
 */

@Component(immediate =true, enabled= true)
@Service(BootcampTime.class)

public class ReturnTimeImpl implements BootcampTime{



    @Override
    public Long getTime() {
       return System.currentTimeMillis();
    }

}
