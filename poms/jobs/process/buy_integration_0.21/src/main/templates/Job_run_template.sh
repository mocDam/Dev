#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dmail.smtp.ssl.protocols=TLSv1.2 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/jaxb-api-2.3.1.jar:$ROOT_PATH/../lib/jaxb-impl-2.2.6-modified.jar:$ROOT_PATH/../lib/jaxws-api-2.3.1.jar:$ROOT_PATH/../lib/mail-1.4.7.jar:$ROOT_PATH/../lib/ST4-4.0.7.jar:$ROOT_PATH/../lib/activation.jar:$ROOT_PATH/../lib/advancedPersistentLookupLib-1.2.jar:$ROOT_PATH/../lib/antlr-2.7.7.jar:$ROOT_PATH/../lib/antlr-runtime-3.5.jar:$ROOT_PATH/../lib/antlr4-runtime-4.6.jar:$ROOT_PATH/../lib/auto-common-0.3.jar:$ROOT_PATH/../lib/auto-service-1.0-rc2.jar:$ROOT_PATH/../lib/avro-1.8.1.jar:$ROOT_PATH/../lib/checkArchive-1.1-20190917.jar:$ROOT_PATH/../lib/commons-beanutils-1.9.3.jar:$ROOT_PATH/../lib/commons-codec-1.10.jar:$ROOT_PATH/../lib/commons-collections-3.2.2.jar:$ROOT_PATH/../lib/commons-collections4-4.1.jar:$ROOT_PATH/../lib/commons-compress-1.19.jar:$ROOT_PATH/../lib/commons-lang3-3.8.1.jar:$ROOT_PATH/../lib/commons-logging-1.2.jar:$ROOT_PATH/../lib/commons-math3-3.6.1.jar:$ROOT_PATH/../lib/components-api-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-common-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-common-oauth-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-salesforce-definition-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-salesforce-runtime-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/daikon-0.31.8.jar:$ROOT_PATH/../lib/daikon-exception-0.31.8.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/filecopy.jar:$ROOT_PATH/../lib/force-partner-api-46.0.0.jar:$ROOT_PATH/../lib/force-wsc-46.0.0.jar:$ROOT_PATH/../lib/geronimo-stax-api_1.0_spec-1.0.1.jar:$ROOT_PATH/../lib/guava-20.0.jar:$ROOT_PATH/../lib/httpclient-4.5.5.jar:$ROOT_PATH/../lib/httpcore-4.4.9.jar:$ROOT_PATH/../lib/jackson-annotations-2.9.0.jar:$ROOT_PATH/../lib/jackson-core-2.9.9.jar:$ROOT_PATH/../lib/jackson-core-asl-1.9.14-TALEND.jar:$ROOT_PATH/../lib/jackson-databind-2.9.9.jar:$ROOT_PATH/../lib/jackson-mapper-asl-1.9.14-TALEND.jar:$ROOT_PATH/../lib/jakarta-oro-2.0.8.jar:$ROOT_PATH/../lib/javacsv-2.0.jar:$ROOT_PATH/../lib/javax.inject-1.jar:$ROOT_PATH/../lib/javax.servlet-api-3.1.0.jar:$ROOT_PATH/../lib/jboss-serialization.jar:$ROOT_PATH/../lib/jcl-over-slf4j-1.7.25.jar:$ROOT_PATH/../lib/joda-time-2.8.2.jar:$ROOT_PATH/../lib/json-20140107.jar:$ROOT_PATH/../lib/json-io-4.9.9-TALEND.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/mail-1.4.jar:$ROOT_PATH/../lib/mssql-jdbc.jar:$ROOT_PATH/../lib/org.apache.oltu.oauth2.client-1.0.0.jar:$ROOT_PATH/../lib/org.apache.oltu.oauth2.common-1.0.0.jar:$ROOT_PATH/../lib/org.osgi.service.component.annotations-1.3.0.jar:$ROOT_PATH/../lib/paranamer-2.7.jar:$ROOT_PATH/../lib/pax-url-aether-2.4.7.jar:$ROOT_PATH/../lib/poi-4.1.0-20190523141255_modified_talend.jar:$ROOT_PATH/../lib/poi-ooxml-4.1.0-20190523141255_modified_talend.jar:$ROOT_PATH/../lib/poi-ooxml-schemas-4.1.0-20190523141255_modified_talend.jar:$ROOT_PATH/../lib/poi-scratchpad-4.1.0-20190523141255_modified_talend.jar:$ROOT_PATH/../lib/slf4j-api-1.7.25.jar:$ROOT_PATH/../lib/slf4j-log4j12-1.7.10.jar:$ROOT_PATH/../lib/snappy-java-1.1.1.3.jar:$ROOT_PATH/../lib/stringtemplate-3.2.1.jar:$ROOT_PATH/../lib/talend-codegen-utils.jar:$ROOT_PATH/../lib/talend-proxy-1.0.0.jar:$ROOT_PATH/../lib/talendExcel-1.5-20190731.jar:$ROOT_PATH/../lib/talend_DB_mssqlUtil-1.3-20190523.jar:$ROOT_PATH/../lib/talend_file_enhanced_20070724.jar:$ROOT_PATH/../lib/talendcsv.jar:$ROOT_PATH/../lib/talendzip.jar:$ROOT_PATH/../lib/thashfile-3.1-20190910.jar:$ROOT_PATH/../lib/trove.jar:$ROOT_PATH/../lib/xmlbeans-3.1.0.jar:$ROOT_PATH/../lib/xz-1.5.jar:$ROOT_PATH/../lib/zip4j-1.3.3.jar:$ROOT_PATH/buy_integration_0_21.jar:$ROOT_PATH/extract_for_dynamics_1_0_11.jar:$ROOT_PATH/set_azure_storage_dynamics_0_1.jar:$ROOT_PATH/buy_send_email_0_1.jar:$ROOT_PATH/extract_for_dynamics_price_0_11.jar:$ROOT_PATH/buy_validation_0_10.jar:$ROOT_PATH/buy_search_recipient_0_1.jar:$ROOT_PATH/extract_for_dynamics_0_11.jar: dev.buy_integration_0_21.BUY_INTEGRATION  --context=PROD "$@"