CREATE TABLE R_REPOSITORY_LOG
(
  ID_REPOSITORY_LOG BIGINT NOT NULL PRIMARY KEY
, REP_VERSION VARCHAR(255)
, LOG_DATE DATETIME
, LOG_USER VARCHAR(255)
, OPERATION_DESC MEDIUMTEXT
)
;

CREATE TABLE R_VERSION
(
  ID_VERSION BIGINT NOT NULL PRIMARY KEY
, MAJOR_VERSION INT
, MINOR_VERSION INT
, UPGRADE_DATE DATETIME
, IS_UPGRADE BOOLEAN
)
;

INSERT INTO R_VERSION(ID_VERSION, MAJOR_VERSION, MINOR_VERSION, UPGRADE_DATE, IS_UPGRADE) VALUES (1,5,0,'2018/09/10 15:58:08.088','N');

CREATE TABLE R_DATABASE_TYPE
(
  ID_DATABASE_TYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (1,'INGRES','Ingres');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (2,'INTERBASE','Borland Interbase');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (3,'INFOBRIGHT','Infobright');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (4,'ORACLE','Oracle');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (5,'EXTENDB','ExtenDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (6,'MSACCESS','MS Access');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (7,'SYBASE','Sybase');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (8,'PALO','Palo MOLAP Server');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (9,'INFORMIX','Informix');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (10,'LucidDB','LucidDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (11,'TERADATA','Teradata');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (12,'UNIVERSE','UniVerse database');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (13,'MONETDB','MonetDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (14,'CACHE','Intersystems Cache');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (15,'MSSQL','MS SQL Server');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (16,'GREENPLUM','Greenplum');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (17,'GENERIC','Generic database');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (18,'SQLITE','SQLite');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (19,'REMEDY-AR-SYSTEM','Remedy Action Request System');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (20,'MONDRIAN','Native Mondrian');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (21,'NETEZZA','Netezza');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (22,'VERTICA5','Vertica 5+');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (23,'IMPALA','Impala');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (24,'POSTGRESQL','PostgreSQL');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (25,'EXASOL4','Exasol 4');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (26,'HYPERSONIC','Hypersonic');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (27,'AS/400','AS/400');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (28,'ORACLERDB','Oracle RDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (29,'DBASE','dBase III, IV or 5');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (30,'KINGBASEES','KingbaseES');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (31,'HIVE','Hadoop Hive');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (32,'SAPR3','SAP ERP System');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (33,'SQLBASE','Gupta SQL Base');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (34,'DERBY','Apache Derby');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (35,'VERTICA','Vertica');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (36,'INFINIDB','Calpont InfiniDB');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (37,'KettleThin','Pentaho Data Services');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (38,'HIVE2','Hadoop Hive 2');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (39,'MYSQL','MySQL');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (40,'MSSQLNATIVE','MS SQL Server (Native)');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (41,'H2','H2');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (42,'SAPDB','MaxDB (SAP DB)');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (43,'VECTORWISE','Ingres VectorWise');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (44,'DB2','IBM DB2');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (45,'NEOVIEW','Neoview');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (46,'IMPALASIMBA','Cloudera Impala');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (47,'SYBASEIQ','SybaseIQ');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (48,'REDSHIFT','Redshift');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (49,'FIREBIRD','Firebird SQL');

INSERT INTO R_DATABASE_TYPE(ID_DATABASE_TYPE, CODE, DESCRIPTION) VALUES (50,'OpenERPDatabaseMeta','OpenERP Server');

CREATE TABLE R_DATABASE_CONTYPE
(
  ID_DATABASE_CONTYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (1,'Native','Native (JDBC)');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (2,'ODBC','ODBC');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (3,'OCI','OCI');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (4,'Plugin','Plugin specific access method');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (5,'JNDI','JNDI');

INSERT INTO R_DATABASE_CONTYPE(ID_DATABASE_CONTYPE, CODE, DESCRIPTION) VALUES (6,',','Custom');

CREATE TABLE R_NOTE
(
  ID_NOTE BIGINT NOT NULL PRIMARY KEY
, VALUE_STR MEDIUMTEXT
, GUI_LOCATION_X INT
, GUI_LOCATION_Y INT
, GUI_LOCATION_WIDTH INT
, GUI_LOCATION_HEIGHT INT
, FONT_NAME MEDIUMTEXT
, FONT_SIZE INT
, FONT_BOLD BOOLEAN
, FONT_ITALIC BOOLEAN
, FONT_COLOR_RED INT
, FONT_COLOR_GREEN INT
, FONT_COLOR_BLUE INT
, FONT_BACK_GROUND_COLOR_RED INT
, FONT_BACK_GROUND_COLOR_GREEN INT
, FONT_BACK_GROUND_COLOR_BLUE INT
, FONT_BORDER_COLOR_RED INT
, FONT_BORDER_COLOR_GREEN INT
, FONT_BORDER_COLOR_BLUE INT
, DRAW_SHADOW BOOLEAN
)
;

CREATE TABLE R_DATABASE
(
  ID_DATABASE BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, ID_DATABASE_TYPE INT
, ID_DATABASE_CONTYPE INT
, HOST_NAME VARCHAR(255)
, DATABASE_NAME MEDIUMTEXT
, PORT INT
, USERNAME VARCHAR(255)
, PASSWORD VARCHAR(255)
, SERVERNAME VARCHAR(255)
, DATA_TBS VARCHAR(255)
, INDEX_TBS VARCHAR(255)
)
;

CREATE TABLE R_DATABASE_ATTRIBUTE
(
  ID_DATABASE_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_DATABASE INT
, CODE VARCHAR(255)
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_RDAT ON R_DATABASE_ATTRIBUTE(ID_DATABASE, CODE)
;

CREATE TABLE R_DIRECTORY
(
  ID_DIRECTORY BIGINT NOT NULL PRIMARY KEY
, ID_DIRECTORY_PARENT INT
, DIRECTORY_NAME VARCHAR(255)
)
;

CREATE UNIQUE INDEX IDX_RDIR ON R_DIRECTORY(ID_DIRECTORY_PARENT, DIRECTORY_NAME)
;

CREATE TABLE R_TRANSFORMATION
(
  ID_TRANSFORMATION BIGINT NOT NULL PRIMARY KEY
, ID_DIRECTORY INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
, EXTENDED_DESCRIPTION MEDIUMTEXT
, TRANS_VERSION VARCHAR(255)
, TRANS_STATUS INT
, ID_STEP_READ INT
, ID_STEP_WRITE INT
, ID_STEP_INPUT INT
, ID_STEP_OUTPUT INT
, ID_STEP_UPDATE INT
, ID_DATABASE_LOG INT
, TABLE_NAME_LOG VARCHAR(255)
, USE_BATCHID BOOLEAN
, USE_LOGFIELD BOOLEAN
, ID_DATABASE_MAXDATE INT
, TABLE_NAME_MAXDATE VARCHAR(255)
, FIELD_NAME_MAXDATE VARCHAR(255)
, OFFSET_MAXDATE DOUBLE
, DIFF_MAXDATE DOUBLE
, CREATED_USER VARCHAR(255)
, CREATED_DATE DATETIME
, MODIFIED_USER VARCHAR(255)
, MODIFIED_DATE DATETIME
, SIZE_ROWSET INT
)
;

CREATE TABLE R_TRANS_ATTRIBUTE
(
  ID_TRANS_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM BIGINT
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_TATT ON R_TRANS_ATTRIBUTE(ID_TRANSFORMATION, CODE, NR)
;

CREATE TABLE R_JOB_ATTRIBUTE
(
  ID_JOB_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM BIGINT
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_JATT ON R_JOB_ATTRIBUTE(ID_JOB, CODE, NR)
;

CREATE TABLE R_DEPENDENCY
(
  ID_DEPENDENCY BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_DATABASE INT
, TABLE_NAME VARCHAR(255)
, FIELD_NAME VARCHAR(255)
)
;

CREATE TABLE R_PARTITION_SCHEMA
(
  ID_PARTITION_SCHEMA BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, DYNAMIC_DEFINITION BOOLEAN
, PARTITIONS_PER_SLAVE VARCHAR(255)
)
;

CREATE TABLE R_PARTITION
(
  ID_PARTITION BIGINT NOT NULL PRIMARY KEY
, ID_PARTITION_SCHEMA INT
, PARTITION_ID VARCHAR(255)
)
;

CREATE TABLE R_TRANS_PARTITION_SCHEMA
(
  ID_TRANS_PARTITION_SCHEMA BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_PARTITION_SCHEMA INT
)
;

CREATE TABLE R_CLUSTER
(
  ID_CLUSTER BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, BASE_PORT VARCHAR(255)
, SOCKETS_BUFFER_SIZE VARCHAR(255)
, SOCKETS_FLUSH_INTERVAL VARCHAR(255)
, SOCKETS_COMPRESSED BOOLEAN
, DYNAMIC_CLUSTER BOOLEAN
)
;

CREATE TABLE R_SLAVE
(
  ID_SLAVE BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, HOST_NAME VARCHAR(255)
, PORT VARCHAR(255)
, WEB_APP_NAME VARCHAR(255)
, USERNAME VARCHAR(255)
, PASSWORD VARCHAR(255)
, PROXY_HOST_NAME VARCHAR(255)
, PROXY_PORT VARCHAR(255)
, NON_PROXY_HOSTS VARCHAR(255)
, MASTER BOOLEAN
)
;

CREATE TABLE R_CLUSTER_SLAVE
(
  ID_CLUSTER_SLAVE BIGINT NOT NULL PRIMARY KEY
, ID_CLUSTER INT
, ID_SLAVE INT
)
;

CREATE TABLE R_TRANS_SLAVE
(
  ID_TRANS_SLAVE BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_SLAVE INT
)
;

CREATE TABLE R_TRANS_CLUSTER
(
  ID_TRANS_CLUSTER BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_CLUSTER INT
)
;

CREATE TABLE R_TRANS_HOP
(
  ID_TRANS_HOP BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_STEP_FROM INT
, ID_STEP_TO INT
, ENABLED BOOLEAN
)
;

CREATE TABLE R_TRANS_STEP_CONDITION
(
  ID_TRANSFORMATION INT
, ID_STEP INT
, ID_CONDITION INT
)
;

CREATE TABLE R_CONDITION
(
  ID_CONDITION BIGINT NOT NULL PRIMARY KEY
, ID_CONDITION_PARENT INT
, NEGATED BOOLEAN
, OPERATOR VARCHAR(255)
, LEFT_NAME VARCHAR(255)
, CONDITION_FUNCTION VARCHAR(255)
, RIGHT_NAME VARCHAR(255)
, ID_VALUE_RIGHT INT
)
;

CREATE TABLE R_VALUE
(
  ID_VALUE BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, VALUE_TYPE VARCHAR(255)
, VALUE_STR VARCHAR(255)
, IS_NULL BOOLEAN
)
;

CREATE TABLE R_STEP_TYPE
(
  ID_STEP_TYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
, HELPTEXT VARCHAR(255)
)
;

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (1,'Delete','Delete','Delete data in a database table based upon keys');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (2,'SyslogMessage','Send message to Syslog','Send message to Syslog server');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (3,'WriteToLog','Write to log','Write data to log');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (4,'TextFileOutput','Text file output','Write rows to a text file.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (5,'MultiwayMergeJoin','Multiway Merge Join','Multiway Merge Join');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (6,'LDAPOutput','LDAP Output','Perform Insert, upsert, update, add or delete operations on records based on their DN (Distinguished  Name).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (7,'HBaseInput','HBase Input','Reads data from a HBase table according to a mapping ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (8,'AccessInput','Microsoft Access Input','Read data from a Microsoft Access file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (9,'JoinRows','Join Rows (cartesian product)','The output of this step is the cartesian product of the input streams.\nThe number of rows is the multiplication of the number of rows in the input streams.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (10,'JsonInput','JSON Input','Extract relevant portions out of JSON structures (file or incoming field) and output rows');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (11,'TableOutput','Table output','Write information to a database table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (12,'MySQLBulkLoader','MySQL Bulk Loader','MySQL bulk loader step, loading data over a named pipe (not available on MS Windows)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (13,'SingleThreader','Single Threader','Executes a transformation snippet in a single thread.  You need a standard mapping or a transformation with an Injector step where data from the parent transformation will arive in blocks.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (14,'HL7Input','HL7 Input','Reads and parses HL7 messages and outputs a series of values from the messages');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (15,'RandomCCNumberGenerator','Generate random credit card numbers','Generate random valide (luhn check) credit card numbers');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (16,'RegexEval','Regex Evaluation','Regular expression Evaluation\nThis step uses a regular expression to evaluate a field. It can also extract new fields out of an existing field with capturing groups.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (17,'PaloDimOutput','Palo Dim Output','Writes data to defined Palo Dimension');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (18,'S3FileOutputPlugin','S3 File Output','Create files in an S3 location');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (19,'ColumnExists','Check if a column exists','Check if a column exists in a table on a specified connection.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (20,'IfNull','If field value is null','Sets a field value to a constant if it is null.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (21,'FileLocked','Check if file is locked','Check if a file is locked by another process');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (22,'SocketWriter','Socket writer','Socket writer.  A socket server that can send rows of data to a socket reader.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (23,'ExcelInput','Microsoft Excel Input','Read data from Excel and OpenOffice Workbooks (XLS, XLSX, ODS).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (24,'TeraFast','Teradata Fastload Bulk Loader','The Teradata Fastload Bulk loader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (25,'DataGrid','Data Grid','Enter rows of static data in a grid, usually for testing, reference or demo purpose');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (26,'DetectLastRow','Identify last row in a stream','Last row will be marked');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (27,'TypeExitEdi2XmlStep','Edi to XML','Converts Edi text to generic XML');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (28,'SortRows','Sort rows','Sort rows based upon field values (ascending or descending)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (29,'FieldsChangeSequence','Add value fields changing sequence','Add sequence depending of fields value change.\nEach time value of at least one field change, PDI will reset sequence. ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (30,'HBaseOutput','HBase Output','Writes data to an HBase table according to a mapping');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (31,'RowsFromResult','Get rows from result','This allows you to read rows from a previous entry in a job.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (32,'JobExecutor','Job Executor','This step executes a Pentaho Data Integration job, sets parameters and passes rows.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (33,'BlockUntilStepsFinish','Block this step until steps finish','Block this step until selected steps finish.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (34,'AutoDoc','Automatic Documentation Output','This step automatically generates documentation based on input in the form of a list of transformations and jobs');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (35,'SFTPPut','SFTP Put','Upload a file or a stream file to remote host via SFTP');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (36,'ProcessFiles','Process files','Process one file per row (copy or move or delete).\nThis step only accept filename in input.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (37,'RuleAccumulator','Rules Accumulator','Rules Accumulator Step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (38,'DimensionLookup','Dimension lookup/update','Update a slowly changing dimension in a data warehouse.\nAlternatively, look up information in this dimension.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (39,'TypeExitGoogleAnalyticsInputStep','Google Analytics','Fetches data from google analytics account');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (40,'PaloCellInput','Palo Cell Input','Reads data from a defined Palo Cube ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (41,'Append','Append streams','Append 2 streams in an ordered way');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (42,'ZipFile','Zip file','Zip a file.\nFilename will be extracted from incoming stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (43,'StringCut','Strings cut','Strings cut (substring).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (44,'MergeRows','Merge Rows (diff)','Merge two streams of rows, sorted on a certain key.  The two streams are compared and the equals, changed, deleted and new rows are flagged.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (45,'MongoDbOutput','MongoDB Output','Writes to a Mongo DB collection');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (46,'Validator','Data Validator','Validates passing data based on a set of rules');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (47,'SSTableOutput','SSTable Output','Writes to a filesystem directory as a Cassandra SSTable');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (48,'MemoryGroupBy','Memory Group by','Builds aggregates in a group by fashion.\nThis step doesn\'t require sorted input.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (49,'SystemInfo','Get System Info','Get information from the system like system date, arguments, etc.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (50,'Denormaliser','Row denormaliser','Denormalises rows by looking up key-value pairs and by assigning them to new fields in the output rows.\nThis method aggregates and needs the input rows to be sorted on the grouping fields');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (51,'ExcelOutput','Microsoft Excel Output','Stores records into an Excel (XLS) document with formatting information.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (52,'Delay','Delay row','Output each input row after a delay');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (53,'OlapInput','OLAP Input','Execute and retrieve data using an MDX query against any XML/A OLAP datasource using olap4j');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (54,'NullIf','Null if...','Sets a field value to null if it is equal to a constant value');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (55,'SalesforceInput','Salesforce Input','Extract data from Salesforce');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (56,'CallEndpointStep','Call endpoint','Call an endpoint of the BA Server.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (57,'SocketReader','Socket reader','Socket reader.  A socket client that connects to a server (Socket Writer step).');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (58,'CombinationLookup','Combination lookup/update','Update a junk dimension in a data warehouse.\nAlternatively, look up information in this dimension.\nThe primary key of a junk dimension are all the fields.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (59,'FilesToResult','Set files in result','This step allows you to set filenames in the result of this transformation.\nSubsequent job entries can then use this information.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (60,'GPBulkLoader','Greenplum Bulk Loader','Greenplum Bulk Loader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (61,'VerticaBulkLoader','Vertica Bulk Loader','Bulk load data into a Vertica database table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (62,'SalesforceDelete','Salesforce Delete','Delete records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (63,'HTTP','HTTP Client','Call a web service over HTTP by supplying a base URL by allowing parameters to be set dynamically');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (64,'XSDValidator','XSD Validator','Validate XML source (files or streams) against XML Schema Definition.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (65,'SetValueConstant','Set field value to a constant','Set value of a field to a constant');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (66,'ScriptValueMod','Modified Java Script Value','This is a modified plugin for the Scripting Values with improved interface and performance.\nWritten & donated to open source by Martin Lange, Proconis : http://www.proconis.de');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (67,'CassandraInput','Cassandra Input','Reads data from a Cassandra table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (68,'SwitchCase','Switch / Case','Switch a row to a certain target step based on the case value in a field.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (69,'DBLookup','Database lookup','Look up values in a database using field values');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (70,'FuzzyMatch','Fuzzy match','Finding approximate matches to a string using matching algorithms.\nRead a field from a main stream and output approximative value from lookup stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (71,'TeraDataBulkLoader','Teradata TPT Bulk Loader','Teradata TPT bulkloader, using tbuild command');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (72,'TextFileInput','Text file input','Read data from a text file in several formats.\nThis data can then be passed on to the next step(s)...');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (73,'SalesforceInsert','Salesforce Insert','Insert records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (74,'CouchDbInput','CouchDb Input','Reads from a Couch DB view');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (75,'ShapeFileReader','ESRI Shapefile Reader','Reads shape file data from an ESRI shape file and linked DBF file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (76,'RssInput','RSS Input','Read RSS feeds');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (77,'Unique','Unique rows','Remove double rows and leave only unique occurrences.\nThis works only on a sorted input.\nIf the input is not sorted, only double consecutive rows are handled correctly.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (78,'InfobrightOutput','Infobright Loader','Load data to an Infobright database table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (79,'UserDefinedJavaClass','User Defined Java Class','This step allows you to program a step using Java code');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (80,'OraBulkLoader','Oracle Bulk Loader','Use Oracle Bulk Loader to load data');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (81,'StepsMetrics','Output steps metrics','Return metrics for one or several steps');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (82,'MongoDbInput','MongoDB Input','Reads from a Mongo DB collection');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (83,'AvroInput','Avro Input','Reads data from an Avro file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (84,'GetTableNames','Get table names','Get table names from database connection and send them to the next step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (85,'SetSessionVariableStep','Set session variables','Set session variables in the current user session.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (86,'MappingInput','Mapping input specification','Specify the input interface of a mapping');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (87,'Abort','Abort','Abort a transformation');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (88,'PropertyOutput','Properties Output','Write data to properties file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (89,'JsonOutput','JSON Output','Create JSON block and output it in a field or a file.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (90,'TableExists','Table exists','Check if a table exists on a specified connection');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (91,'DetectEmptyStream','Detect empty stream','This step will output one empty row if input stream is empty\n(ie when input stream does not contain any row)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (92,'GPLoad','Greenplum Load','Greenplum Load');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (93,'PaloDimInput','Palo Dim Input','Reads data from a defined Palo Dimension');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (94,'Normaliser','Row Normaliser','De-normalised information can be normalised using this step type.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (95,'SelectValues','Select values','Select or remove fields in a row.\nOptionally, set the field meta-data: type, length and precision.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (96,'XMLInputStream','XML Input Stream (StAX)','This step is capable of processing very large and complex XML files very fast.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (97,'Flattener','Row flattener','Flattens consecutive rows based on the order in which they appear in the input stream');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (98,'InsertUpdate','Insert / Update','Update or insert rows in a database based upon keys.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (99,'HadoopExitPlugin','MapReduce Output','Exit a Hadoop Mapper or Reducer transformation ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (100,'MondrianInput','Mondrian Input','Execute and retrieve data using an MDX query against a Pentaho Analyses OLAP server (Mondrian)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (101,'SQLFileOutput','SQL File Output','Output SQL INSERT statements to file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (102,'ReplaceString','Replace in string','Replace all occurences a word in a string with another word.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (103,'CubeInput','De-serialize from file','Read rows of data from a data cube.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (104,'WebServiceLookup','Web Services Lookup','Look up information using web services (WSDL)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (105,'TableCompare','Table Compare','Compares 2 tables and gives back a list of differences');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (106,'MailValidator','Mail Validator','Check if an email address is valid.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (107,'OpenERPObjectOutputImport','OpenERP Object Output','Writes data into OpenERP objects using the object import procedure');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (108,'RowGenerator','Generate Rows','Generate a number of empty or equal rows.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (109,'DBJoin','Database join','Execute a database query using stream values as parameters');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (110,'RuleExecutor','Rules Executor','Rules Executor Step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (111,'MergeJoin','Merge Join','Joins two streams on a given key and outputs a joined set. The input streams must be sorted on the join key');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (112,'FieldMetadataAnnotation','Annotate Stream','Add more details to describe data for published models used by the Streamlined Data Refinery.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (113,'OpenERPObjectInput','OpenERP Object Input','Reads data from OpenERP objects');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (114,'SalesforceUpdate','Salesforce Update','Update records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (115,'GetVariable','Get Variables','Determine the values of certain (environment or Kettle) variables and put them in field values.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (116,'XMLJoin','XML Join','Joins a stream of XML-Tags into a target XML string');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (117,'DBProc','Call DB Procedure','Get back information by calling a database procedure.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (118,'RssOutput','RSS Output','Read RSS stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (119,'S3CSVINPUT','S3 CSV Input','Is capable of reading CSV data stored on Amazon S3 in parallel');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (120,'SimpleMapping','Simple Mapping (sub-transformation)','Run a mapping (sub-transformation), use MappingInput and MappingOutput to specify the fields interface.  This is the simplified version only allowing one input and one output data set.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (121,'OpenERPObjectDelete','OpenERP Object Delete','Deletes OpenERP objects');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (122,'LDAPInput','LDAP Input','Read data from LDAP host');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (123,'XBaseInput','XBase input','Reads records from an XBase type of database file (DBF)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (124,'CheckSum','Add a checksum','Add a checksum column for each input row');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (125,'MetaInject','ETL Metadata Injection','This step allows you to inject metadata into an existing transformation prior to execution.  This allows for the creation of dynamic and highly flexible data integration solutions.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (126,'ParallelGzipCsvInput','GZIP CSV Input','Parallel GZIP CSV file input reader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (127,'SortedMerge','Sorted Merge','Sorted Merge');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (128,'ChangeFileEncoding','Change file encoding','Change file encoding and create a new file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (129,'LoadFileInput','Load file content in memory','Load file content in memory');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (130,'Janino','User Defined Java Expression','Calculate the result of a Java Expression using Janino');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (131,'getXMLData','Get data from XML','Get data from XML file by using XPath.\n This step also allows you to parse XML defined in a previous field.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (132,'LDIFInput','LDIF Input','Read data from LDIF files');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (133,'PGBulkLoader','PostgreSQL Bulk Loader','PostgreSQL Bulk Loader');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (134,'CubeOutput','Serialize to file','Write rows of data to a data cube');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (135,'SymmetricCryptoTrans','Symmetric Cryptography','Encrypt or decrypt a string using symmetric encryption.\nAvailable algorithms are DES, AES, TripleDES.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (136,'AddXML','Add XML','Encode several fields into an XML fragment');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (137,'TableInput','Table input','Read information from a database table.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (138,'SASInput','SAS Input','This step reads files in sas7bdat (SAS) native format');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (139,'AccessOutput','Microsoft Access Output','Stores records into an MS-Access database table.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (140,'ElasticSearchBulk','ElasticSearch Bulk Insert','Performs bulk inserts into ElasticSearch');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (141,'GetFileNames','Get File Names','Get file names from the operating system and send them to the next step.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (142,'StringOperations','String operations','Apply certain operations like trimming, padding and others to string value.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (143,'SetVariable','Set Variables','Set environment variables based on a single input row.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (144,'RandomValue','Generate random value','Generate random value');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (145,'GetSessionVariableStep','Get session variables','Get session variables from the current user session.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (146,'FieldSplitter','Split Fields','When you want to split a single field into more then one, use this step type.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (147,'BlockingStep','Blocking Step','This step blocks until all incoming rows have been processed.  Subsequent steps only recieve the last input row to this step.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (148,'CsvInput','CSV file input','Simple CSV file input');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (149,'PropertyInput','Property Input','Read data (key, value) from properties files.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (150,'SynchronizeAfterMerge','Synchronize after merge','This step perform insert/update/delete in one go based on the value of a field. ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (151,'Dummy','Dummy (do nothing)','This step type doesn\'t do anything.\nIt\'s useful however when testing things or in certain situations where you want to split streams.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (152,'StreamLookup','Stream lookup','Look up values coming from another stream in the transformation.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (153,'PGPEncryptStream','PGP Encrypt stream','Encrypt data stream with PGP');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (154,'GetFilesRowsCount','Get Files Rows Count','Returns rows count for text files.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (155,'SetValueField','Set field value','Set value of a field with another value field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (156,'PGPDecryptStream','PGP Decrypt stream','Decrypt data stream with PGP');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (157,'Mapping','Mapping (sub-transformation)','Run a mapping (sub-transformation), use MappingInput and MappingOutput to specify the fields interface');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (158,'DynamicSQLRow','Dynamic SQL row','Execute dynamic SQL statement build in a previous field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (159,'Update','Update','Update data in a database table based upon keys');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (160,'CreateSharedDimensions','Shared Dimension','Create shared dimensions for use with Streamlined Data Refinery.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (161,'UniqueRowsByHashSet','Unique rows (HashSet)','Remove double rows and leave only unique occurrences by using a HashSet.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (162,'Formula','Formula','Calculate a formula using Pentaho\'s libformula');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (163,'WebServiceAvailable','Check if webservice is available','Check if a webservice is available');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (164,'ExecProcess','Execute a process','Execute a process and return the result');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (165,'Injector','Injector','Injector step to allow to inject rows into the transformation through the java API');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (166,'SampleRows','Sample rows','Filter rows based on the line number.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (167,'DummyStep','Example Step','This is a plugin example step');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (168,'GetSlaveSequence','Get ID from slave server','Retrieves unique IDs in blocks from a slave server.  The referenced sequence needs to be configured on the slave server in the XML configuration file.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (169,'FileExists','File exists','Check if a file exists');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (170,'MappingOutput','Mapping output specification','Specify the output interface of a mapping');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (171,'Script','Script','Calculate values by scripting in Ruby, Python, Groovy, JavaScript, ... (JSR-223)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (172,'GroupBy','Group by','Builds aggregates in a group by fashion.\nThis works only on a sorted input.\nIf the input is not sorted, only double consecutive rows are handled correctly.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (173,'GetRepositoryNames','Get repository names','Lists detailed information about transformations and/or jobs in a repository');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (174,'PaloCellOutput','Palo Cell Output','Writes data to a defined Palo Cube');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (175,'ClosureGenerator','Closure Generator','This step allows you to generates a closure table using parent-child relationships.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (176,'Sequence','Add sequence','Get the next value from an sequence');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (177,'HadoopEnterPlugin','MapReduce Input','Enter a Hadoop Mapper or Reducer transformation');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (178,'FilterRows','Filter rows','Filter rows using simple equations');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (179,'VectorWiseBulkLoader','Ingres VectorWise Bulk Loader','This step interfaces with the Ingres VectorWise Bulk Loader "COPY TABLE" command.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (180,'ConcatFields','Concat Fields','Concat fields together into a new field (similar to the Text File Output step)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (181,'TypeExitExcelWriterStep','Microsoft Excel Writer','Writes or appends data to an Excel file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (182,'OldTextFileInput','Old Text file input','Read data from a text file in several formats.\nThis data can then be passed on to the next step(s)...');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (183,'AnalyticQuery','Analytic Query','Execute analytic queries over a sorted dataset (LEAD/LAG/FIRST/LAST)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (184,'FixedInput','Fixed file input','Fixed file input');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (185,'HadoopFileInputPlugin','Hadoop File Input','Process files from an HDFS location');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (186,'HadoopFileOutputPlugin','Hadoop File Output','Create files in an HDFS location ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (187,'SapInput','SAP Input','Read data from SAP ERP, optionally with parameters');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (188,'HBaseRowDecoder','HBase Row Decoder','Decodes an incoming key and HBase result object according to a mapping ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (189,'PrioritizeStreams','Prioritize streams','Prioritize streams in an order way.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (190,'CassandraOutput','Cassandra Output','Writes to a Cassandra table');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (191,'ValueMapper','Value Mapper','Maps values of a certain field from one value to another');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (192,'Constant','Add constants','Add one or more constants to the input rows');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (193,'ExecSQLRow','Execute row SQL script','Execute SQL script extracted from a field\ncreated in a previous step.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (194,'JavaFilter','Java Filter','Filter rows using java code');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (195,'XMLOutput','XML Output','Write data to an XML file');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (196,'ReservoirSampling','Reservoir Sampling','[Transform] Samples a fixed number of rows from the incoming stream');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (197,'RowsToResult','Copy rows to result','Use this step to write rows to the executing job.\nThe information will then be passed to the next entry in this job.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (198,'SalesforceUpsert','Salesforce Upsert','Insert or update records in Salesforce module.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (199,'ExecSQL','Execute SQL script','Execute an SQL script, optionally parameterized using input rows');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (200,'MonetDBAgileMart','MonetDB Agile Mart','Load data into MonetDB for Agile BI use cases');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (201,'Rest','REST Client','Consume RESTfull services.\nREpresentational State Transfer (REST) is a key design idiom that embraces a stateless client-server\narchitecture in which the web services are viewed as resources and can be identified by their URLs');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (202,'LucidDBStreamingLoader','LucidDB Streaming Loader','Load data into LucidDB by using Remote Rows UDX.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (203,'TransExecutor','Transformation Executor','This step executes a Pentaho Data Integration transformation, sets parameters and passes rows.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (204,'Calculator','Calculator','Create new fields by performing simple calculations');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (205,'StepMetastructure','Metadata structure of stream','This is a step to read the metadata of the incoming stream.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (206,'SplitFieldToRows3','Split field to rows','Splits a single string field by delimiter and creates a new row for each split term');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (207,'FilesFromResult','Get files from result','This step allows you to read filenames used or generated in a previous entry in a job.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (208,'YamlInput','Yaml Input ','Read YAML source (file or stream) parse them and convert them to rows and writes these to one or more output. ');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (209,'UnivariateStats','Univariate Statistics','This step computes some simple stats based on a single input field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (210,'SSH','Run SSH commands','Run SSH commands and returns result.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (211,'MailInput','Email messages input','Read POP3/IMAP server and retrieve messages');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (212,'XSLT','XSL Transformation','Make an XSL Transformation');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (213,'CloneRow','Clone row','Clone a row as many times as needed');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (214,'HTTPPOST','HTTP Post','Call a web service request over HTTP by supplying a base URL by allowing parameters to be set dynamically');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (215,'TableAgileMart','Table Agile Mart','Load data into a table for Agile BI use cases');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (216,'GetSubFolders','Get SubFolder names','Read a parent folder and return all subfolders');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (217,'CreditCardValidator','Credit card validator','The Credit card validator step will help you tell:\n(1) if a credit card number is valid (uses LUHN10 (MOD-10) algorithm)\n(2) which credit card vendor handles that number\n(VISA, MasterCard, Diners Club, EnRoute, American Express (AMEX),...)');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (218,'NumberRange','Number range','Create ranges based on numeric field');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (219,'Mail','Mail','Send eMail.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (220,'MonetDBBulkLoader','MonetDB Bulk Loader','Load data into MonetDB by using their bulk load command in streaming mode.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (221,'SecretKeyGenerator','Secret key generator','Generate secret key for algorithms such as DES, AES, TripleDES.');

INSERT INTO R_STEP_TYPE(ID_STEP_TYPE, CODE, DESCRIPTION, HELPTEXT) VALUES (222,'PentahoReportingOutput','Pentaho Reporting Output','Executes an existing report (PRPT)');

CREATE TABLE R_STEP
(
  ID_STEP BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
, ID_STEP_TYPE INT
, DISTRIBUTE BOOLEAN
, COPIES INT
, GUI_LOCATION_X INT
, GUI_LOCATION_Y INT
, GUI_DRAW BOOLEAN
, COPIES_STRING VARCHAR(255)
)
;

CREATE TABLE R_STEP_ATTRIBUTE
(
  ID_STEP_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_STEP INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM BIGINT
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_RSAT ON R_STEP_ATTRIBUTE(ID_STEP, CODE, NR)
;

CREATE TABLE R_STEP_DATABASE
(
  ID_TRANSFORMATION INT
, ID_STEP INT
, ID_DATABASE INT
)
;

CREATE INDEX IDX_RSD1 ON R_STEP_DATABASE(ID_TRANSFORMATION)
;

CREATE INDEX IDX_RSD2 ON R_STEP_DATABASE(ID_DATABASE)
;

CREATE TABLE R_TRANS_NOTE
(
  ID_TRANSFORMATION INT
, ID_NOTE INT
)
;

CREATE TABLE R_LOGLEVEL
(
  ID_LOGLEVEL BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (1,'Error','Error');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (2,'Minimal','Minimal');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (3,'Basic','Basic');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (4,'Detailed','Detailed');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (5,'Debug','Debug');

INSERT INTO R_LOGLEVEL(ID_LOGLEVEL, CODE, DESCRIPTION) VALUES (6,'Rowlevel','Row Level (very detailed)');

CREATE TABLE R_LOG
(
  ID_LOG BIGINT NOT NULL PRIMARY KEY
, NAME VARCHAR(255)
, ID_LOGLEVEL INT
, LOGTYPE VARCHAR(255)
, FILENAME VARCHAR(255)
, FILEEXTENTION VARCHAR(255)
, ADD_DATE BOOLEAN
, ADD_TIME BOOLEAN
, ID_DATABASE_LOG INT
, TABLE_NAME_LOG VARCHAR(255)
)
;

CREATE TABLE R_JOB
(
  ID_JOB BIGINT NOT NULL PRIMARY KEY
, ID_DIRECTORY INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
, EXTENDED_DESCRIPTION MEDIUMTEXT
, JOB_VERSION VARCHAR(255)
, JOB_STATUS INT
, ID_DATABASE_LOG INT
, TABLE_NAME_LOG VARCHAR(255)
, CREATED_USER VARCHAR(255)
, CREATED_DATE DATETIME
, MODIFIED_USER VARCHAR(255)
, MODIFIED_DATE DATETIME
, USE_BATCH_ID BOOLEAN
, PASS_BATCH_ID BOOLEAN
, USE_LOGFIELD BOOLEAN
, SHARED_FILE VARCHAR(255)
)
;

CREATE TABLE R_JOBENTRY_DATABASE
(
  ID_JOB INT
, ID_JOBENTRY INT
, ID_DATABASE INT
)
;

CREATE INDEX IDX_RJD1 ON R_JOBENTRY_DATABASE(ID_JOB)
;

CREATE INDEX IDX_RJD2 ON R_JOBENTRY_DATABASE(ID_DATABASE)
;

CREATE TABLE R_JOBENTRY_TYPE
(
  ID_JOBENTRY_TYPE BIGINT NOT NULL PRIMARY KEY
, CODE VARCHAR(255)
, DESCRIPTION VARCHAR(255)
)
;

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (1,'WEBSERVICE_AVAILABLE','Check webservice availability');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (2,'MYSQL_BULK_FILE','BulkLoad from Mysql into file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (3,'COPY_MOVE_RESULT_FILENAMES','Process result filenames');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (4,'SqoopImport','Sqoop Import');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (5,'XSD_VALIDATOR','XSD Validator');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (6,'SPECIAL','Special entries');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (7,'FILE_COMPARE','File Compare');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (8,'CREATE_FOLDER','Create a folder');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (9,'MAIL_VALIDATOR','Mail validator');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (10,'PALO_CUBE_DELETE','Palo Cube Delete');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (11,'MAIL','Mail');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (12,'TRUNCATE_TABLES','Truncate tables');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (13,'MSGBOX_INFO','Display Msgbox Info');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (14,'WAIT_FOR_SQL','Wait for SQL');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (15,'FTPS_GET','Get a file with FTPS');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (16,'FTP_DELETE','FTP Delete');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (17,'CHECK_FILES_LOCKED','Check files locked');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (18,'COLUMNS_EXIST','Columns exist in a table');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (19,'DATASOURCE_PUBLISH','Publish Model');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (20,'UNZIP','Unzip file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (21,'SqoopExport','Sqoop Export');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (22,'JOB','Job');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (23,'HadoopPigScriptExecutorPlugin','Pig Script Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (24,'DELETE_FILE','Delete file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (25,'ABORT','Abort job');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (26,'SHELL','Shell');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (27,'HiveJobExecutorPlugin','Amazon Hive Job Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (28,'XML_WELL_FORMED','Check if XML file is well formed');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (29,'SFTP','Get a file with SFTP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (30,'HTTP','HTTP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (31,'FTP_PUT','Put a file with FTP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (32,'SQL','SQL');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (33,'WRITE_TO_FILE','Write to file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (34,'PGP_VERIFY_FILES','Verify file signature with PGP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (35,'DOS_UNIX_CONVERTER','Convert file between Windows and Unix');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (36,'PGP_DECRYPT_FILES','Decrypt files with PGP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (37,'EVAL','JavaScript');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (38,'TALEND_JOB_EXEC','Talend Job Execution');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (39,'DELAY','Wait for');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (40,'HL7MLLPAcknowledge','HL7 MLLP Acknowledge');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (41,'PALO_CUBE_CREATE','Palo Cube Create');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (42,'HadoopTransJobExecutorPlugin','Pentaho MapReduce');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (43,'SparkSubmit','Spark Submit');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (44,'FTP','Get a file with FTP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (45,'FOLDERS_COMPARE','Compare folders');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (46,'ZIP_FILE','Zip file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (47,'GET_POP','Get mails (POP3/IMAP)');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (48,'TRANS','Transformation');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (49,'DataRefineryBuildModel','Build Model');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (50,'SEND_NAGIOS_PASSIVE_CHECK','Send Nagios passive check');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (51,'SET_VARIABLES','Set variables');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (52,'MS_ACCESS_BULK_LOAD','MS Access Bulk Load');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (53,'DummyJob','Example Job');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (54,'COPY_FILES','Copy Files');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (55,'EVAL_FILES_METRICS','Evaluate files metrics');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (56,'ADD_RESULT_FILENAMES','Add filenames to result');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (57,'PING','Ping a host');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (58,'CHECK_DB_CONNECTIONS','Check Db connections');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (59,'DELETE_FOLDERS','Delete folders');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (60,'FILE_EXISTS','File Exists');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (61,'EVAL_TABLE_CONTENT','Evaluate rows number in a table');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (62,'FILES_EXIST','Checks if files exist');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (63,'SFTPPUT','Put a file with SFTP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (64,'DELETE_RESULT_FILENAMES','Delete filenames from result');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (65,'DELETE_FILES','Delete files');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (66,'FTPS_PUT','Upload files to FTPS');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (67,'PGP_ENCRYPT_FILES','Encrypt files with PGP');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (68,'OozieJobExecutor','Oozie Job Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (69,'SUCCESS','Success');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (70,'WAIT_FOR_FILE','Wait for file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (71,'WRITE_TO_LOG','Write To Log');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (72,'MSSQL_BULK_LOAD','BulkLoad into MSSQL');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (73,'TELNET','Telnet a host');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (74,'MOVE_FILES','Move Files');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (75,'XSLT','XSL Transformation');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (76,'EMRJobExecutorPlugin','Amazon EMR Job Executor');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (77,'DTD_VALIDATOR','DTD Validator');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (78,'HL7MLLPInput','HL7 MLLP Input');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (79,'FOLDER_IS_EMPTY','Check if a folder is empty');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (80,'SIMPLE_EVAL','Simple evaluation');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (81,'EXPORT_REPOSITORY','Export repository to XML file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (82,'HadoopCopyFilesPlugin','Hadoop Copy Files');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (83,'SYSLOG','Send information using Syslog');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (84,'TABLE_EXISTS','Table exists');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (85,'MYSQL_BULK_LOAD','BulkLoad into Mysql');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (86,'HadoopJobExecutorPlugin','Hadoop Job Executor ');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (87,'CREATE_FILE','Create file');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (88,'CONNECTED_TO_REPOSITORY','Check if connected to repository');

INSERT INTO R_JOBENTRY_TYPE(ID_JOBENTRY_TYPE, CODE, DESCRIPTION) VALUES (89,'SNMP_TRAP','Send SNMP trap');

CREATE TABLE R_JOBENTRY
(
  ID_JOBENTRY BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_JOBENTRY_TYPE INT
, NAME VARCHAR(255)
, DESCRIPTION MEDIUMTEXT
)
;

CREATE TABLE R_JOBENTRY_COPY
(
  ID_JOBENTRY_COPY BIGINT NOT NULL PRIMARY KEY
, ID_JOBENTRY INT
, ID_JOB INT
, ID_JOBENTRY_TYPE INT
, NR INT
, GUI_LOCATION_X INT
, GUI_LOCATION_Y INT
, GUI_DRAW BOOLEAN
, PARALLEL BOOLEAN
)
;

CREATE TABLE R_JOBENTRY_ATTRIBUTE
(
  ID_JOBENTRY_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_JOBENTRY INT
, NR INT
, CODE VARCHAR(255)
, VALUE_NUM DOUBLE
, VALUE_STR MEDIUMTEXT
)
;

CREATE UNIQUE INDEX IDX_RJEA ON R_JOBENTRY_ATTRIBUTE(ID_JOBENTRY_ATTRIBUTE, CODE, NR)
;

CREATE TABLE R_JOB_HOP
(
  ID_JOB_HOP BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_JOBENTRY_COPY_FROM INT
, ID_JOBENTRY_COPY_TO INT
, ENABLED BOOLEAN
, EVALUATION BOOLEAN
, UNCONDITIONAL BOOLEAN
)
;

CREATE TABLE R_JOB_NOTE
(
  ID_JOB INT
, ID_NOTE INT
)
;

CREATE TABLE R_TRANS_LOCK
(
  ID_TRANS_LOCK BIGINT NOT NULL PRIMARY KEY
, ID_TRANSFORMATION INT
, ID_USER INT
, LOCK_MESSAGE MEDIUMTEXT
, LOCK_DATE DATETIME
)
;

CREATE TABLE R_JOB_LOCK
(
  ID_JOB_LOCK BIGINT NOT NULL PRIMARY KEY
, ID_JOB INT
, ID_USER INT
, LOCK_MESSAGE MEDIUMTEXT
, LOCK_DATE DATETIME
)
;

CREATE TABLE R_NAMESPACE
(
  ID_NAMESPACE BIGINT NOT NULL PRIMARY KEY
, NAME MEDIUMTEXT
)
;

CREATE TABLE R_ELEMENT_TYPE
(
  ID_ELEMENT_TYPE BIGINT NOT NULL PRIMARY KEY
, ID_NAMESPACE INT
, NAME MEDIUMTEXT
, DESCRIPTION MEDIUMTEXT
)
;

CREATE TABLE R_ELEMENT
(
  ID_ELEMENT BIGINT NOT NULL PRIMARY KEY
, ID_ELEMENT_TYPE INT
, NAME MEDIUMTEXT
)
;

CREATE TABLE R_ELEMENT_ATTRIBUTE
(
  ID_ELEMENT_ATTRIBUTE BIGINT NOT NULL PRIMARY KEY
, ID_ELEMENT INT
, ID_ELEMENT_ATTRIBUTE_PARENT INT
, ATTR_KEY VARCHAR(255)
, ATTR_VALUE MEDIUMTEXT
)
;

CREATE TABLE R_USER
(
  ID_USER BIGINT NOT NULL PRIMARY KEY
, LOGIN VARCHAR(255)
, PASSWORD VARCHAR(255)
, NAME VARCHAR(255)
, DESCRIPTION VARCHAR(255)
, ENABLED BOOLEAN
)
;

INSERT INTO R_USER(ID_USER, LOGIN, PASSWORD, NAME, DESCRIPTION, ENABLED) VALUES (1,'admin','2be98afc86aa7f2e4cb79ce71da9fa6d4','Administrator','User manager','Y');

INSERT INTO R_USER(ID_USER, LOGIN, PASSWORD, NAME, DESCRIPTION, ENABLED) VALUES (2,'guest','2be98afc86aa7f2e4cb79ce77cb97bcce','Guest account','Read-only guest account','Y');

