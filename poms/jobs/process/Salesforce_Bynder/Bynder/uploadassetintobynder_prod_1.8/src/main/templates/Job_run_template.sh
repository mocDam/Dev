#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dmail.smtp.ssl.protocols=TLSv1.2 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/<artifactId>-<version>.<type>:$ROOT_PATH/../lib/ST4-4.0.7.jar:$ROOT_PATH/../lib/accessors-smart-1.1.jar:$ROOT_PATH/../lib/advancedPersistentLookupLib-1.2.jar:$ROOT_PATH/../lib/antlr-2.7.7.jar:$ROOT_PATH/../lib/antlr-runtime-3.5.jar:$ROOT_PATH/../lib/antlr4-runtime-4.6.jar:$ROOT_PATH/../lib/aopalliance-1.0.jar:$ROOT_PATH/../lib/auto-common-0.3.jar:$ROOT_PATH/../lib/auto-service-1.0-rc2.jar:$ROOT_PATH/../lib/avro-1.8.1.jar:$ROOT_PATH/../lib/bcprov-jdk15on-1.60.jar:$ROOT_PATH/../lib/commons-beanutils-1.9.3.jar:$ROOT_PATH/../lib/commons-codec-1.10.jar:$ROOT_PATH/../lib/commons-collections-3.2.2.jar:$ROOT_PATH/../lib/commons-compress-1.19.jar:$ROOT_PATH/../lib/commons-lang3-3.8.1.jar:$ROOT_PATH/../lib/commons-logging-1.2.jar:$ROOT_PATH/../lib/components-api-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-common-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-common-oauth-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-salesforce-definition-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/components-salesforce-runtime-0.28.0-SNAPSHOT.jar:$ROOT_PATH/../lib/cryptacular-1.1.1.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/cxf-core-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-bindings-soap-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-databinding-jaxb-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-features-logging-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-frontend-jaxrs-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-rs-client-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-rs-extension-providers-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-security-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-security-saml-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-transports-http-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-ws-security-3.3.1.jar:$ROOT_PATH/../lib/cxf-rt-wsdl-3.3.1.jar:$ROOT_PATH/../lib/daikon-0.31.8.jar:$ROOT_PATH/../lib/daikon-exception-0.31.8.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/ehcache-2.10.6.jar:$ROOT_PATH/../lib/filecopy.jar:$ROOT_PATH/../lib/force-partner-api-46.0.0.jar:$ROOT_PATH/../lib/force-wsc-46.0.0.jar:$ROOT_PATH/../lib/guava-20.0.jar:$ROOT_PATH/../lib/httpclient-4.5.5.jar:$ROOT_PATH/../lib/httpcore-4.4.9.jar:$ROOT_PATH/../lib/jackson-annotations-2.9.0.jar:$ROOT_PATH/../lib/jackson-core-2.9.9.jar:$ROOT_PATH/../lib/jackson-core-asl-1.9.14-TALEND.jar:$ROOT_PATH/../lib/jackson-databind-2.9.9.jar:$ROOT_PATH/../lib/jackson-mapper-asl-1.9.14-TALEND.jar:$ROOT_PATH/../lib/jakarta-oro-2.0.8.jar:$ROOT_PATH/../lib/jakarta.xml.bind-api-2.3.2:$ROOT_PATH/../lib/jasypt-1.9.2.jar:$ROOT_PATH/../lib/javacsv-2.0.jar:$ROOT_PATH/../lib/javax.annotation_1.2.0.v201602091430.jar:$ROOT_PATH/../lib/javax.inject-1.jar:$ROOT_PATH/../lib/javax.servlet-api-3.1.0.jar:$ROOT_PATH/../lib/javax.ws.rs-api-2.1.jar:$ROOT_PATH/../lib/javax.wsdl_1.6.2.v201012040545.jar:$ROOT_PATH/../lib/jboss-serialization.jar:$ROOT_PATH/../lib/jcl-over-slf4j-1.7.25.jar:$ROOT_PATH/../lib/jettison-1.3.8.jar:$ROOT_PATH/../lib/joda-time-2.8.2.jar:$ROOT_PATH/../lib/joda-time-2.9.jar:$ROOT_PATH/../lib/json-20140107.jar:$ROOT_PATH/../lib/json-io-4.9.9-TALEND.jar:$ROOT_PATH/../lib/json-path-2.1.0.jar:$ROOT_PATH/../lib/json-smart-2.2.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/mssql-jdbc.jar:$ROOT_PATH/../lib/neethi-3.1.1.jar:$ROOT_PATH/../lib/opensaml-core-3.3.0.jar:$ROOT_PATH/../lib/opensaml-profile-api-3.3.0.jar:$ROOT_PATH/../lib/opensaml-saml-api-3.3.0.jar:$ROOT_PATH/../lib/opensaml-saml-impl-3.3.0.jar:$ROOT_PATH/../lib/opensaml-security-api-3.3.0.jar:$ROOT_PATH/../lib/opensaml-security-impl-3.3.0.jar:$ROOT_PATH/../lib/opensaml-soap-api-3.3.0.jar:$ROOT_PATH/../lib/opensaml-xacml-api-3.3.0.jar:$ROOT_PATH/../lib/opensaml-xacml-impl-3.3.0.jar:$ROOT_PATH/../lib/opensaml-xacml-saml-api-3.3.0.jar:$ROOT_PATH/../lib/opensaml-xacml-saml-impl-3.3.0.jar:$ROOT_PATH/../lib/opensaml-xmlsec-api-3.3.0.jar:$ROOT_PATH/../lib/opensaml-xmlsec-impl-3.3.0.jar:$ROOT_PATH/../lib/org.apache.commons.codec_1.6.0.v201305230611.jar:$ROOT_PATH/../lib/org.apache.commons.logging_1.2.0.v20180409-1502.jar:$ROOT_PATH/../lib/org.apache.log4j_1.2.15.v201012070815.jar:$ROOT_PATH/../lib/org.apache.oltu.oauth2.client-1.0.0.jar:$ROOT_PATH/../lib/org.apache.oltu.oauth2.common-1.0.0.jar:$ROOT_PATH/../lib/org.osgi.service.component.annotations-1.3.0.jar:$ROOT_PATH/../lib/paranamer-2.7.jar:$ROOT_PATH/../lib/pax-url-aether-2.4.7.jar:$ROOT_PATH/../lib/security-common-7.3.1-M3.jar:$ROOT_PATH/../lib/slf4j-api-1.7.25.jar:$ROOT_PATH/../lib/slf4j-api-1.7.26.jar:$ROOT_PATH/../lib/slf4j-api-1.7.5.jar:$ROOT_PATH/../lib/slf4j-log4j12-1.7.10.jar:$ROOT_PATH/../lib/slf4j-log4j12-1.7.5.jar:$ROOT_PATH/../lib/snappy-java-1.1.1.3.jar:$ROOT_PATH/../lib/spring-aop-5.1.4.RELEASE.jar:$ROOT_PATH/../lib/spring-beans-5.1.4.RELEASE.jar:$ROOT_PATH/../lib/spring-context-5.1.4.RELEASE.jar:$ROOT_PATH/../lib/spring-core-5.1.4.RELEASE.jar:$ROOT_PATH/../lib/spring-expression-5.1.4.RELEASE.jar:$ROOT_PATH/../lib/spring-web-5.1.4.RELEASE.jar:$ROOT_PATH/../lib/spring-webmvc-5.1.4.RELEASE.jar:$ROOT_PATH/../lib/stax-api-1.0-2.jar:$ROOT_PATH/../lib/stax2-api-3.1.4.jar:$ROOT_PATH/../lib/stringtemplate-3.2.1.jar:$ROOT_PATH/../lib/talend-codegen-utils.jar:$ROOT_PATH/../lib/talend-proxy-1.0.0.jar:$ROOT_PATH/../lib/talend_file_enhanced_20070724.jar:$ROOT_PATH/../lib/talendcsv.jar:$ROOT_PATH/../lib/trove.jar:$ROOT_PATH/../lib/woodstox-core-asl-4.4.1.jar:$ROOT_PATH/../lib/wss4j-bindings-2.2.2.jar:$ROOT_PATH/../lib/wss4j-policy-2.2.2.jar:$ROOT_PATH/../lib/wss4j-ws-security-common-2.2.2.jar:$ROOT_PATH/../lib/wss4j-ws-security-dom-2.2.2.jar:$ROOT_PATH/../lib/wss4j-ws-security-policy-stax-2.2.2.jar:$ROOT_PATH/../lib/wss4j-ws-security-stax-2.2.2.jar:$ROOT_PATH/../lib/xmlschema-core-2.2.4.jar:$ROOT_PATH/../lib/xmlsec-2.1.2.jar:$ROOT_PATH/../lib/xz-1.5.jar:$ROOT_PATH/uploadassetintobynder_prod_1_8.jar:$ROOT_PATH/updateassetsinbynder_prod_0_1.jar:$ROOT_PATH/ecom_renameasset_bynder_sujob_prod_0_1.jar:$ROOT_PATH/renameanddispatchflatshotasset_prod_0_1.jar:$ROOT_PATH/updateimageinsalesforce_0_4.jar:$ROOT_PATH/renameasset_bynder_subjobprod_0_1.jar: dev.uploadassetintobynder_prod_1_8.UploadAssetIntoBynder_PROD  --context=Default "$@"