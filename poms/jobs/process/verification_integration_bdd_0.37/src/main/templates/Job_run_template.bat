%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -Dmail.smtp.ssl.protocols=TLSv1.2 -cp .;../lib/routines.jar;../lib/ST4-4.0.7.jar;../lib/antlr-2.7.7.jar;../lib/antlr-runtime-3.5.jar;../lib/antlr4-runtime-4.6.jar;../lib/auto-common-0.3.jar;../lib/auto-service-1.0-rc2.jar;../lib/avro-1.8.1.jar;../lib/commons-beanutils-1.9.3.jar;../lib/commons-codec-1.10.jar;../lib/commons-collections-3.2.2.jar;../lib/commons-compress-1.19.jar;../lib/commons-lang3-3.8.1.jar;../lib/commons-logging-1.2.jar;../lib/components-api-0.28.0-SNAPSHOT.jar;../lib/components-common-0.28.0-SNAPSHOT.jar;../lib/components-common-oauth-0.28.0-SNAPSHOT.jar;../lib/components-salesforce-definition-0.28.0-SNAPSHOT.jar;../lib/components-salesforce-runtime-0.28.0-SNAPSHOT.jar;../lib/crypto-utils.jar;../lib/daikon-0.31.8.jar;../lib/daikon-exception-0.31.8.jar;../lib/dom4j-1.6.1.jar;../lib/filecopy.jar;../lib/force-partner-api-46.0.0.jar;../lib/force-wsc-46.0.0.jar;../lib/guava-20.0.jar;../lib/httpclient-4.5.5.jar;../lib/httpcore-4.4.9.jar;../lib/jackson-annotations-2.9.0.jar;../lib/jackson-core-2.9.9.jar;../lib/jackson-core-asl-1.9.14-TALEND.jar;../lib/jackson-databind-2.9.9.jar;../lib/jackson-mapper-asl-1.9.14-TALEND.jar;../lib/jakarta-oro-2.0.8.jar;../lib/javacsv-2.0.jar;../lib/javax.inject-1.jar;../lib/javax.servlet-api-3.1.0.jar;../lib/jcl-over-slf4j-1.7.25.jar;../lib/joda-time-2.8.2.jar;../lib/json-20140107.jar;../lib/json-io-4.9.9-TALEND.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;../lib/org.apache.oltu.oauth2.client-1.0.0.jar;../lib/org.apache.oltu.oauth2.common-1.0.0.jar;../lib/org.osgi.service.component.annotations-1.3.0.jar;../lib/paranamer-2.7.jar;../lib/pax-url-aether-2.4.7.jar;../lib/slf4j-api-1.7.25.jar;../lib/slf4j-log4j12-1.7.10.jar;../lib/snappy-java-1.1.1.3.jar;../lib/stringtemplate-3.2.1.jar;../lib/talend-codegen-utils.jar;../lib/talend-proxy-1.0.0.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/xz-1.5.jar;verification_integration_bdd_0_37.jar;sendmailoffice365_0_1.jar;masterfile_excel_to_sqlserver_0_10.jar;gettokenandsendmailoauth2_5_0.jar;buy_search_recipient_0_1.jar;buy_validation_0_11.jar; dev.verification_integration_bdd_0_37.VERIFICATION_INTEGRATION_BDD  --context=Default %*