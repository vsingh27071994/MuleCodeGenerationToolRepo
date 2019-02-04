--------------------------------------------------------
--  File created - Monday-October-29-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CONFIGURATIONSTORE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."CONFIGURATIONSTORE" 
   (	"ID" VARCHAR2(30 BYTE), 
	"CONFIGURATIONXML" VARCHAR2(700 BYTE), 
	"PROPERTIES" VARCHAR2(700 BYTE), 
	"GLOBALXML" VARCHAR2(700 BYTE), 
	"DEPENDENCIES" VARCHAR2(700 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.CONFIGURATIONSTORE
SET DEFINE OFF;
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('HTTP',' <http:request config-ref="HTTP_Request_Configuration" path="/path" method="GET" doc:name="HTTP"/>','http.HTTP.host=localhost	
http.HTTP.port=1521
http.HTTP.basePath=\getDetails',' <http:request-config name="HTTP_Request_Configuration" host="${http.HTTP.host}" port="${http.HTTP.port}" basePath="${http.HTTP.basePath}" doc:name="HTTP Request Configuration"/>',null);
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('JMS','<jms:outbound-endpoint queue="QueueName" connector-ref="JMS" doc:name="JMS"/>','jms.JMS.user=System
jms.JMS.password=System','<jms:connector name="JMS" username="${jms.JMS.user}" password="${jms.JMS.password}" validateConnections="true" doc:name="JMS"/>','<dependencies>
<dependency>
    <groupId>javax.jms</groupId>
    <artifactId>jms</artifactId>
    <version>1.1</version>
</dependency>
<dependency>
<groupId>com.tibco</groupId>
  <artifactId>tibjms</artifactId>
  <version>4.4.0</version>
  </dependency>
  </dependencies>');
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('EHUB','<db:select config-ref="EHUB_Configuration" doc:name="Database">
            <db:parameterized-query/>
        </db:select>','db.EHUB.host=localhost
db.EHUB.port=1521
db.EHUB.instance=xe
db.EHUB.user=system
db.EHUB.password=12345','<db:oracle-config name="EHUB_Configuration" host="${db.EHUB.host}" port="${db.EHUB.port}" instance="${db.EHUB.instance}" user="${db.EHUB.user}" password="${db.EHUB.password}" doc:name="Oracle Configuration"/>','<dependency>
    <groupId>com.oracle</groupId>
    <artifactId>ojdbc6</artifactId>
    <version>11.2.0.3</version>
</dependency>');
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('FILE','<file:outbound-endpoint path="${file.FILE.path}" connector-ref="FILE" responseTimeout="10000" doc:name="File" outputPattern="${file.FILE.filePattern}"/>','file.FILE.writeToDirectory=D:\Output
file.FILE.readFromDirectory=D:\Input\FinalProject
file.FILE.path=D:\Input\FinalProject
file.FILE.filePattern=pom.xml','<file:connector name="FILE" writeToDirectory="${file.FILE.writeToDirectory}" autoDelete="false" streaming="true" validateConnections="true" doc:name="File" readFromDirectory="${file.FILE.readFromDirectory}"/>',null);
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('FTP','<ftp:outbound-endpoint host="${ftp.FTP.host}" port="${ftp.FTP.port}" path="${ftp.FTP.path}" user="${ftp.FTP.user}" password="${ftp.FTP.password}" connector-ref="FTP" outputPattern="${ftp.FTP.pattern}" responseTimeout="10000" doc:name="FTP"/>','ftp.FTP.host=localhost
ftp.FTP.port=21
ftp.FTP.path=\ConfigurationFiles\EmployeeData
ftp.FTP.user=System
ftp.FTP.password=System
ftp.FTP.pattern=EmployeeData.txt','<ftp:connector name="FTP" pollingFrequency="1000" validateConnections="true" doc:name="FTP"/>',null);
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('Starter','Configuration','Property','<http:listener-config doc:name="HTTP Listener Configuration" host="0.0.0.0" name="HTTP_Listener_Configuration" port="8081"/>',null);
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('SALESFORCE','<sfdc:batch-result config-ref="SALESFORCE__Basic_Authentication" doc:name="Salesforce"/>','account.salesforce.username=System
account.salesforce.password=System1234
account.salesforce.authorizationURL= https://login.salesforce.com/services/Soap/u/37.0','<sfdc:config name="SALESFORCE__Basic_Authentication" username="${account.salesforce.username}" password="${account.salesforce.password}" doc:name="Salesforce: Basic Authentication" url="${account.salesforce.authorizationURL}"/>',null);
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('SMTP','<smtp:outbound-endpoint host="${smtp.gmail.host}" responseTimeout="10000" doc:name="SMTP" port="${smtp.gmail.port}" connector-ref="SMTP" user="${smtp.gmail.user}" from="${smtp.gmail.mailSender}" password="${smtp.gmail.password}" subject="${smtp.gmail.mailSubject}" to="${smtp.gmail.mailReceiver}"/>','smtp.gmail.host=smtp.gmail.com
smtp.gmail.port=587
smtp.gmail.user=teksystemsServer@gmail.com
smtp.gmail.password=tekathon
smtp.gmail.mailReceiver=tekindoorapps@gmail.com
smtp.gmail.mailSender=Tek
smtp.gmail.mailSubject=MulecodeGenTool Zip;','<smtp:gmail-connector name="SMTP" validateConnections="true" doc:name="Gmail"/>',null);
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('SOAP','<ws:consumer config-ref="SOAP_Service_Consumer" doc:name="Web Service Consumer" operation="${webservice.soap.operation}"/>','webservice.soap.operation=add
webservice.soap.WSDLLocation=http://svn.apache.org/repos/asf/airavata/sandbox/xbaya-web/test/Calculator.wsdl
webservice.soap.Service=Calculator
webservice.soap.Port=CalculatorHttpSoap11Endpoint
webservice.soap.Address=http://156.56.179.164:9763/services/Calculator.CalculatorHttpSoap11Endpoint/','<ws:consumer-config name="SOAP_Service_Consumer" service="${webservice.soap.Service}" port="${webservice.soap.Port}" serviceAddress="${webservice.soap.Address}" doc:name="Web Service Consumer" wsdlLocation="${webservice.soap.WSDLLocation}"/>',null);
Insert into SYSTEM.CONFIGURATIONSTORE (ID,CONFIGURATIONXML,PROPERTIES,GLOBALXML,DEPENDENCIES) values ('ONSTARTUP','<quartz:outbound-endpoint jobName="${quartz.QUARTZ.jobName}" repeatInterval="3600000" connector-ref="ONSTARTUP" responseTimeout="10000" doc:name="Quartz">
            <quartz:event-generator-job groupName="TestScheduler" jobGroupName="TestScheduler">
                <quartz:payload>This is a job Scheduler</quartz:payload>
            </quartz:event-generator-job>
        </quartz:outbound-endpoint>','quartz.QUARTZ.jobName=MyQuartzScheduler','<quartz:connector name="ONSTARTUP" validateConnections="true" doc:name="Quartz"/>',null);
--------------------------------------------------------
--  Constraints for Table CONFIGURATIONSTORE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CONFIGURATIONSTORE" MODIFY ("PROPERTIES" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CONFIGURATIONSTORE" MODIFY ("CONFIGURATIONXML" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CONFIGURATIONSTORE" MODIFY ("ID" NOT NULL ENABLE);

