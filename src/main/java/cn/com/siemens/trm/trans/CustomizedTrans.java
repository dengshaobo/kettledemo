package cn.com.siemens.trm.trans;

import cn.com.siemens.trm.utils.DBUtils;
import org.pentaho.di.core.database.DatabaseMeta;
import org.pentaho.di.core.exception.KettleMissingPluginsException;
import org.pentaho.di.core.exception.KettleXMLException;
import org.pentaho.di.core.logging.PerformanceLogTable;
import org.pentaho.di.core.logging.StepLogTable;
import org.pentaho.di.core.logging.TransLogTable;
import org.pentaho.di.core.plugins.PluginRegistry;
import org.pentaho.di.core.plugins.StepPluginType;
import org.pentaho.di.core.variables.VariableSpace;
import org.pentaho.di.core.variables.Variables;
import org.pentaho.di.trans.TransHopMeta;
import org.pentaho.di.trans.TransMeta;
import org.pentaho.di.trans.step.StepMeta;
import org.pentaho.di.trans.steps.tableinput.TableInputMeta;
import org.pentaho.di.trans.steps.tableoutput.TableOutputMeta;

/**
 * @author fanyang
 */
public class CustomizedTrans {

    public TransMeta generateTableInputOutputTransMeta(String transName) {

        System.out.println("********** start to generate table input and output transformation **********");
        //******************************************************************

        //******************************************************************

        TransMeta transMeta = new TransMeta();
        transMeta.setName(transName);
        DBUtils.addDatabase(transMeta);

        //database table input
        PluginRegistry registry = PluginRegistry.getInstance();
        TableInputMeta tableInput = new TableInputMeta();
        String tableInputPluginId = registry.getPluginId(StepPluginType.class, tableInput);

        DatabaseMeta sourceDatabaseMeta = transMeta.findDatabase("sourceDatabaseName");
        tableInput.setDatabaseMeta(sourceDatabaseMeta);
//        String sourceTable = (String) PropsUtils.getProperty("sourceTable");
        String sourceTable = "TEST_SOURCE";
        String selectSql = "select name, description from " + sourceTable;
        tableInput.setSQL(selectSql);

        //table input step meta
        StepMeta tableInputMetaStep = new StepMeta(tableInputPluginId, "table_input", tableInput);
        tableInputMetaStep.setDraw(true);
        tableInputMetaStep.setLocation(100, 100);
        transMeta.addStep(tableInputMetaStep);

        //database table output
        TableOutputMeta tableOutput = new TableOutputMeta();
        String tableOutputPluginId = registry.getPluginId(StepPluginType.class, tableOutput);
        DatabaseMeta targetDatabaseMeta = transMeta.findDatabase("targetDatabaseName");
        tableOutput.setDatabaseMeta(targetDatabaseMeta);

//        String targetTable = (String) PropsUtils.getProperty("targetTable");
        String targetTable = "test_target";
        tableOutput.setTableName(targetTable);
        tableOutput.setTruncateTable(true);

        tableOutput.setSpecifyFields(true);
        String[] fieldDatabase = new String[]{"name", "description"};
        tableOutput.setFieldDatabase(fieldDatabase);
        String[] fieldStream = new String[]{"name", "description"};
        tableOutput.setFieldStream(fieldStream);

        //table output step meta
        StepMeta tableOutputMetaStep = new StepMeta(tableOutputPluginId, "table_output", tableOutput);
        tableOutputMetaStep.setDraw(true);
        tableOutputMetaStep.setLocation(200, 100);
        transMeta.addStep(tableOutputMetaStep);

        transMeta.addTransHop(new TransHopMeta(tableInputMetaStep, tableOutputMetaStep));

        //Log Definition
        //Define Variable
        VariableSpace variableSpace = new Variables();
        variableSpace.setVariable("transLogging", "targetDatabaseName");
        variableSpace.initializeVariablesFrom(null);

        //Step Log Definition
        StepLogTable stepLogTable = StepLogTable.getDefault(variableSpace, transMeta);
        //StepLogTable's Database Connection Name
        stepLogTable.setConnectionName("targetDatabaseName");
        stepLogTable.setTableName("step_log");
        //Set TransMeta StepLogTable
        transMeta.setStepLogTable(stepLogTable);

        //Performance Log Definition
        PerformanceLogTable performanceLogTable = PerformanceLogTable.getDefault(variableSpace, transMeta);
        //PerformanceLogTable's Database Connection Name
        performanceLogTable.setConnectionName("targetDatabaseName");
        performanceLogTable.setTableName("performance_log");
        transMeta.setPerformanceLogTable(performanceLogTable);

        //Trans Log Definition
        //TransLogTable's Database Connection Name
        TransLogTable transLogTable = TransLogTable.getDefault(variableSpace, transMeta, transMeta.getSteps());
        transLogTable.setConnectionName("targetDatabaseName");
        transLogTable.setTableName("trans_log");
        transMeta.setTransLogTable(transLogTable);

        //******************************************************************

        //******************************************************************

        System.out.println("********** generate transformation finished **********");

        return transMeta;
    }

    public TransMeta generateTransMetaWithKtrFile(String filename) {
        System.out.println("generate transformation with ktr file");
        TransMeta transMeta = null;
        try {
            transMeta = new TransMeta(filename);
        } catch (KettleXMLException e) {
            e.printStackTrace();
        } catch (KettleMissingPluginsException e) {
            e.printStackTrace();
        }
        return transMeta;
    }
}
