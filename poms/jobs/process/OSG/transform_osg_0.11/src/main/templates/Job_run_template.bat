%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -Xmx2048M -Dmail.smtp.ssl.protocols=TLSv1.2 -Dfile.encoding=UTF-8 -cp .;../lib/routines.jar;../lib/commons-collections4-4.1.jar;../lib/commons-compress-1.19.jar;../lib/commons-lang3-3.8.1.jar;../lib/commons-math3-3.6.1.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/geronimo-stax-api_1.0_spec-1.0.1.jar;../lib/jakarta-oro-2.0.8.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;../lib/poi-4.1.0-20190523141255_modified_talend.jar;../lib/poi-ooxml-4.1.0-20190523141255_modified_talend.jar;../lib/poi-ooxml-schemas-4.1.0-20190523141255_modified_talend.jar;../lib/poi-scratchpad-4.1.0-20190523141255_modified_talend.jar;../lib/talendExcel-1.5-20190731.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/xmlbeans-3.1.0.jar;transform_osg_0_11.jar; dev.transform_osg_0_11.TRANSFORM_OSG  --context=Default %*