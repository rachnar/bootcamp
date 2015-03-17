package com.ig.bootcamp.core.impl;

import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Properties;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import com.ig.bootcamp.core.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;


/**
 * Created with IntelliJ IDEA.
 * User: rahul
 * Date: 24/2/15
 * Time: 5:33 PM
 * To change this template use File | Settings | File Templates.
 */


@Component(immediate =true, enabled= true)
@Service(ReadfileService.class)

public class ReadFileimpl implements ReadfileService
{

    @Override
    public String readfile()
    {
        StringBuffer stringBuffer=null;
        try {
            File file = new File("/home/rahul/ab.txt");
            FileReader fileReader = new FileReader(file);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            stringBuffer = new StringBuffer();
            String line;
            while ((line = bufferedReader.readLine()) != null)
            {
                stringBuffer.append(line);
                stringBuffer.append("\n");
            }
            fileReader.close();
//            System.out.println("Contents of file:");
//            System.out.println(stringBuffer.toString());
            }
         catch (IOException e) {
            e.printStackTrace();
             }
        return stringBuffer.toString();
        }


}

