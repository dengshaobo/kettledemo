package cn.com.siemens.trm.job;

import cn.com.siemens.trm.config.TransConfig;
import cn.com.siemens.trm.service.TransService;
import cn.com.siemens.trm.service.impl.TransServiceImpl;
import cn.com.siemens.trm.utils.TransUtils;
import org.pentaho.di.core.exception.KettleXMLException;
import org.pentaho.di.job.JobHopMeta;
import org.pentaho.di.job.JobMeta;
import org.pentaho.di.job.entries.shell.JobEntryShell;
import org.pentaho.di.job.entries.special.JobEntrySpecial;
import org.pentaho.di.job.entries.success.JobEntrySuccess;
import org.pentaho.di.job.entries.trans.JobEntryTrans;
import org.pentaho.di.job.entry.JobEntryCopy;
import org.pentaho.di.trans.TransMeta;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 * @author fanyang
 */
public class CustomizedJob {

    public JobMeta jobWithShellScripts(String jobName) {

        System.out.println("Generate the job with shell scripts");

        JobMeta jobMeta = new JobMeta();
        jobMeta.setName(jobName);

        // Create and configure start entry
        System.out.println("- Adding Start Entry");
        JobEntrySpecial start = new JobEntrySpecial();
        start.setName("START");
        start.setStart(true);

        // wrap into JobEntryCopy object, which holds generic job entry information
        JobEntryCopy startEntry = new JobEntryCopy(start);

        // place it on Spoon canvas properly
        startEntry.setLaunchingInParallel(true);

        startEntry.setDrawn(true);
        startEntry.setLocation(100, 100);

        jobMeta.addJobEntry(startEntry);

        // Create and configure shell entry
        System.out.println("- Adding Shell Entry");
        JobEntryShell shellPower = new JobEntryShell();
        shellPower.setName("shell_spark_power");
        shellPower.arguments = new String[0];

        String powerShellFile = "/opt/test/spark_shell_1.sh";
        shellPower.setFileName(powerShellFile);

        System.out.println("- Adding Shell Entry");
        JobEntryShell shellCurrent = new JobEntryShell();
        shellCurrent.setName("shell_spark_current");
        shellCurrent.arguments = new String[0];
        String currentShellFile = "/opt/test/spark_shell_2.sh";
        shellCurrent.setFileName(currentShellFile);

        System.out.println("- Adding Shell Entry");
        JobEntryShell shellVoltage = new JobEntryShell();
        shellVoltage.setName("shell_spark_voltage");
        shellVoltage.arguments = new String[0];
        String voltageShellFile = "/opt/test/spark_shell_3.sh";
        shellVoltage.setFileName(voltageShellFile);

        //
        JobEntryCopy shellEntryPower = new JobEntryCopy(shellPower);
        JobEntryCopy shellEntryCurrent = new JobEntryCopy(shellCurrent);
        JobEntryCopy shellEntryVoltage = new JobEntryCopy(shellVoltage);

        //
        shellEntryPower.setDrawn(true);
        shellEntryPower.setLocation(200, 100);

        shellEntryCurrent.setDrawn(true);
        shellEntryCurrent.setLocation(200, 200);

        shellEntryVoltage.setDrawn(true);
        shellEntryVoltage.setLocation(200, 300);

        // wrap into JobEntryCopy object, which holds generic job entry information
        jobMeta.addJobEntry(shellEntryPower);
        jobMeta.addJobEntry(shellEntryCurrent);
        jobMeta.addJobEntry(shellEntryVoltage);

        //Create success entry
        System.out.println("- Adding Success Entry");

        JobEntrySuccess success = new JobEntrySuccess();
        success.setName("success");
        JobEntryCopy successEntry = new JobEntryCopy(success);

        successEntry.setDrawn(true);
        successEntry.setLocation(300, 100);

        //wrap into JobEntryCopy object, which holds generic job entry information
        jobMeta.addJobEntry(successEntry);

        //Create job hop from start to shell
        JobHopMeta startHopPowerShell = new JobHopMeta(startEntry, shellEntryPower);
        JobHopMeta startHopCurrentShell = new JobHopMeta(startEntry, shellEntryCurrent);
        JobHopMeta startHopVoltageShell = new JobHopMeta(startEntry, shellEntryVoltage);

        jobMeta.addJobHop(startHopPowerShell);
        jobMeta.addJobHop(startHopCurrentShell);
        jobMeta.addJobHop(startHopVoltageShell);

        //Create job hop from shell to success
        JobHopMeta powerHopSuccess = new JobHopMeta(shellEntryPower, successEntry);
        JobHopMeta currentHopSuccess = new JobHopMeta(shellEntryCurrent, successEntry);
        JobHopMeta voltageHopSuccess = new JobHopMeta(shellEntryVoltage, successEntry);

        jobMeta.addJobHop(powerHopSuccess);
        jobMeta.addJobHop(currentHopSuccess);
        jobMeta.addJobHop(voltageHopSuccess);

        return jobMeta;
    }

    public JobMeta generateJobWithTableInputOutputTrans(String jobName) {

        ApplicationContext context = new AnnotationConfigApplicationContext(TransConfig.class);
        TransService transService = context.getBean("transService", TransServiceImpl.class);

//        System.out.println("Generate the job with transformation");
        JobMeta jobMeta = new JobMeta();
        jobMeta.setName(jobName);

        // Create and configure start entry
//        System.out.println("- Adding Start Entry");
        JobEntrySpecial startEntry = new JobEntrySpecial();
        startEntry.setName("START");
        startEntry.setStart(true);

        // wrap into JobEntryCopy object, which holds generic job entry information
        JobEntryCopy startEntryCopy = new JobEntryCopy(startEntry);

        // place it on Spoon canvas properly
        startEntryCopy.setLaunchingInParallel(true);
        startEntryCopy.setDrawn(true);
        startEntryCopy.setLocation(100, 100);
        jobMeta.addJobEntry(startEntryCopy);

        //execute transformation update_insert_byq.ktr
        JobEntryTrans byqTransEntry = new JobEntryTrans("byq");
        byqTransEntry.setTransname("byq");
        JobEntryCopy byqTransEntryCopy = new JobEntryCopy(byqTransEntry);
        byqTransEntryCopy.setDrawn(true);
        byqTransEntryCopy.setLocation(200, 200);
        jobMeta.addJobEntry(byqTransEntryCopy);

        TransMeta byqTransMeta = transService.generateTransMetaWithKtrFile("etl/update_insert_byq.ktr");
        TransUtils.exec(byqTransMeta);

        //execute transformation update_insert_byq_yh.ktr
        JobEntryTrans byqyhTransEntry = new JobEntryTrans("byqyh");
        byqyhTransEntry.setTransname("byqyh");
        JobEntryCopy byqyhTransEntryCopy = new JobEntryCopy(byqyhTransEntry);
        byqyhTransEntryCopy.setDrawn(true);
        byqyhTransEntryCopy.setLocation(200, 200);
        jobMeta.addJobEntry(byqyhTransEntryCopy);

        TransMeta byqyhTransMeta = transService.generateTransMetaWithKtrFile("etl/update_insert_byq_yh.ktr");
        TransUtils.exec(byqyhTransMeta);

        //execute transformation update_insert_jld.ktr
        JobEntryTrans jldTransEntry = new JobEntryTrans("jld");
        jldTransEntry.setTransname("jld");
        JobEntryCopy jldTransEntryCopy = new JobEntryCopy(jldTransEntry);
        jldTransEntryCopy.setDrawn(true);
        jldTransEntryCopy.setLocation(200, 200);
        jobMeta.addJobEntry(jldTransEntryCopy);

        TransMeta jldTransMeta = transService.generateTransMetaWithKtrFile("etl/update_insert_jld.ktr");
        TransUtils.exec(jldTransMeta);

        //execute transformation update_insert_jld_byq.ktr
        JobEntryTrans jldbyqTransEntry = new JobEntryTrans("jldbyq");
        jldbyqTransEntry.setTransname("jldbyq");
        JobEntryCopy jldbyqTransEntryCopy = new JobEntryCopy(jldbyqTransEntry);
        jldbyqTransEntryCopy.setDrawn(true);
        jldbyqTransEntryCopy.setLocation(200, 200);
        jobMeta.addJobEntry(jldbyqTransEntryCopy);

        TransMeta jldbyqTransMeta = transService.generateTransMetaWithKtrFile("etl/update_insert_jld_byq.ktr");
        TransUtils.exec(jldbyqTransMeta);

        //execute transformation update_insert_jld_yh.ktr
        JobEntryTrans jldyhTransEntry = new JobEntryTrans("jldyh");
        jldyhTransEntry.setTransname("jldyh");

        JobEntryCopy jldyhTransEntryCopy = new JobEntryCopy(jldyhTransEntry);
        jldyhTransEntryCopy.setDrawn(true);
        jldyhTransEntryCopy.setLocation(200, 200);
        jobMeta.addJobEntry(jldyhTransEntryCopy);

        TransMeta jldyhTransMeta = transService.generateTransMetaWithKtrFile("etl/update_insert_jld_yh.ktr");
        TransUtils.exec(jldyhTransMeta);

        //execute transformation update_insert_ydkh.ktr
        JobEntryTrans ydkhTransEntry = new JobEntryTrans("ydkh");
        ydkhTransEntry.setTransname("ydkh");
        JobEntryCopy ydkhTransEntryCopy = new JobEntryCopy(ydkhTransEntry);
        ydkhTransEntryCopy.setDrawn(true);
        ydkhTransEntryCopy.setLocation(200, 200);
        jobMeta.addJobEntry(ydkhTransEntryCopy);

        TransMeta ydkhTransMeta = transService.generateTransMetaWithKtrFile("etl/update_insert_ydkh.ktr");
        TransUtils.exec(ydkhTransMeta);

        //execute transformation update_insert_zzjg.ktr
        JobEntryTrans zzjgTransEntry = new JobEntryTrans("zzjg");
        zzjgTransEntry.setTransname("zzjg");
        JobEntryCopy zzjgTransEntryCopy = new JobEntryCopy(zzjgTransEntry);
        zzjgTransEntryCopy.setDrawn(true);
        zzjgTransEntryCopy.setLocation(200, 200);
        jobMeta.addJobEntry(zzjgTransEntryCopy);

        TransMeta zzjgTransMeta = transService.generateTransMetaWithKtrFile("etl/update_insert_zzjg.ktr");
        TransUtils.exec(zzjgTransMeta);

        //success
        JobEntrySuccess successEntry = new JobEntrySuccess();
        successEntry.setName("success");
        JobEntryCopy successEntryCopy = new JobEntryCopy(successEntry);
        successEntryCopy.setDrawn(true);
        successEntryCopy.setLocation(200, 200);

        jobMeta.addJobEntry(successEntryCopy);

        //hop from start to byq transformation
        JobHopMeta startHopByqTrans = new JobHopMeta(startEntryCopy, byqTransEntryCopy);
        jobMeta.addJobHop(startHopByqTrans);

        //hop from start to byq_yh transformation
        JobHopMeta startHopByqyhTrans = new JobHopMeta(startEntryCopy, byqyhTransEntryCopy);
        jobMeta.addJobHop(startHopByqyhTrans);

        //hop from start to jld transformation
        JobHopMeta startHopJldTrans = new JobHopMeta(startEntryCopy, jldTransEntryCopy);
        jobMeta.addJobHop(startHopJldTrans);

        //hop from start to jld_byq transformation
        JobHopMeta startHopJldbyqTrans = new JobHopMeta(startEntryCopy, jldbyqTransEntryCopy);
        jobMeta.addJobHop(startHopJldbyqTrans);

        //hop from start to jld_yh transformaiton
        JobHopMeta startHopJldyhTrans = new JobHopMeta(startEntryCopy, jldyhTransEntryCopy);
        jobMeta.addJobHop(startHopJldyhTrans);

        //hop from start to ydkh transformation
        JobHopMeta startHopYdkhTrans = new JobHopMeta(startEntryCopy, ydkhTransEntryCopy);
        jobMeta.addJobHop(startHopYdkhTrans);

        //hop from start to zzjg transformation
        JobHopMeta startHopZzjgTrans = new JobHopMeta(startEntryCopy, zzjgTransEntryCopy);
        jobMeta.addJobHop(startHopZzjgTrans);

        //hop from byq transformation to success
        JobHopMeta byqHopSuccess = new JobHopMeta(byqTransEntryCopy, successEntryCopy);
        jobMeta.addJobHop(byqHopSuccess);

        //hop from byq_yh transformation to success
        JobHopMeta byqyhHopSuccess = new JobHopMeta(byqyhTransEntryCopy, successEntryCopy);
        jobMeta.addJobHop(byqyhHopSuccess);
        //hop from jld transformation to success
        JobHopMeta jldHopSuccess = new JobHopMeta(jldTransEntryCopy, successEntryCopy);
        jobMeta.addJobHop(jldHopSuccess);
        //hop from jld_byq transformation to success
        JobHopMeta jldbyqHopSuccess = new JobHopMeta(jldbyqTransEntryCopy, successEntryCopy);
        jobMeta.addJobHop(jldbyqHopSuccess);
        //hop from jld_yh transformation to success
        JobHopMeta jldyhHopSuccess = new JobHopMeta(jldyhTransEntryCopy, successEntryCopy);
        jobMeta.addJobHop(jldyhHopSuccess);
        //hop from ydkh transformation to success
        JobHopMeta ydkhHopSuccess = new JobHopMeta(ydkhTransEntryCopy, successEntryCopy);
        jobMeta.addJobHop(ydkhHopSuccess);
        //hop from zzjg transformation to success
        JobHopMeta zzjgHopSuccess = new JobHopMeta(zzjgTransEntryCopy, successEntryCopy);
        jobMeta.addJobHop(zzjgHopSuccess);

        //Job Log


        return jobMeta;
    }

    public JobMeta generateArchiveJobWithKjbFile(String filename) {
        System.out.println("generate archive job with kjb file");
        JobMeta jobMeta = null;

        try {
            jobMeta = new JobMeta(filename, null);
        } catch (KettleXMLException e) {
            e.printStackTrace();
        }
        return jobMeta;
    }

    public JobMeta generateShellJobWithKjbFile(String filename) {
        System.out.println("generate spark job with kjb file");

        JobMeta jobMeta = null;
        try {
            jobMeta = new JobMeta(filename, null);
        } catch (KettleXMLException e) {
            e.printStackTrace();
        }
        return jobMeta;
    }
}
