Based on the inputs provided in UI, this project will generate corresponding mule project will all properties(property file ie dev.properties), all global
configurations(global.xml) in a separate file, add all dependencies in pom.xml file, all the implementations and all the subflows(end systems) in a folder named as subflows.

It will mail the zip file of mule project to the email provided in UI which can be extraced and imported in anypoint studio using pom file.

We will hit the url http://hscsrv164.allegisgroup.com:8090/MulecodeGenTool/ and it will open the UI page. After filling all the required details when we submit it will form the json payload and will hit the rest service for mule project creation.We
will get two emails. First just after the request is submitted and another after the project is generated . We can also track the status of our project in the track 
section provided in the right top corner of UI page. The direct url for tracking is http://hscsrv164.allegisgroup.com:8090/MulecodeGenTool/track.html .Based on the tracking id we will be able to know whether project generation is success, failure or pending.

There are two tables in the database, one for the configurations ie dependencies, global configuration, properties etc and the other is for the tracking for a particular tracking id.

We have put all the UI files in the WebContent folder of the project itself. So whenever we are using this project we just have to import deploy the war file on server and run the database scripts on the corresponding database
from where it is reading all the configurations.

Database details are in com.tek.mulecodegen.util.MuleFlowTools.java class. They are in getDatabaseConnection1() method.

If we are deploying it to any server then we have to change host details at five places. First of all at 2 places in index.html and one place in track.html.
Then at two places in EmailSender.java class.
