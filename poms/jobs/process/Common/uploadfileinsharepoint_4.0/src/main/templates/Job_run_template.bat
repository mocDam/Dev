%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp .;../lib/routines.jar;../lib/org.json.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;uploadfileinsharepoint_4_0.jar;gettokensharepoint_4_0.jar; dev.uploadfileinsharepoint_4_0.UploadFileInSharepoint  --context=Default %*