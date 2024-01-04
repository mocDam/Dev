$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' '-Dmail.smtp.ssl.protocols=TLSv1.2' -cp '.;../lib/routines.jar;../lib/ST4-4.0.7.jar;../lib/accessors-smart-1.1.jar;../lib/advancedPersistentLookupLib-1.2.jar;../lib/antlr-2.7.7.jar;../lib/antlr-runtime-3.5.jar;../lib/antlr4-runtime-4.6.jar;../lib/aopalliance-1.0.jar;../lib/auto-common-0.3.jar;../lib/auto-service-1.0-rc2.jar;../lib/avro-1.8.1.jar;../lib/bcprov-jdk15on-1.60.jar;../lib/commons-beanutils-1.9.3.jar;../lib/commons-codec-1.10.jar;../lib/commons-collections-3.2.2.jar;../lib/commons-compress-1.19.jar;../lib/commons-lang3-3.8.1.jar;../lib/commons-logging-1.2.jar;../lib/components-api-0.28.0-SNAPSHOT.jar;../lib/components-common-0.28.0-SNAPSHOT.jar;../lib/components-common-oauth-0.28.0-SNAPSHOT.jar;../lib/components-salesforce-definition-0.28.0-SNAPSHOT.jar;../lib/components-salesforce-runtime-0.28.0-SNAPSHOT.jar;../lib/cryptacular-1.1.1.jar;../lib/crypto-utils.jar;../lib/cxf-core-3.3.1.jar;../lib/cxf-rt-bindings-soap-3.3.1.jar;../lib/cxf-rt-databinding-jaxb-3.3.1.jar;../lib/cxf-rt-features-logging-3.3.1.jar;../lib/cxf-rt-frontend-jaxrs-3.3.1.jar;../lib/cxf-rt-rs-client-3.3.1.jar;../lib/cxf-rt-rs-extension-providers-3.3.1.jar;../lib/cxf-rt-security-3.3.1.jar;../lib/cxf-rt-security-saml-3.3.1.jar;../lib/cxf-rt-transports-http-3.3.1.jar;../lib/cxf-rt-ws-security-3.3.1.jar;../lib/cxf-rt-wsdl-3.3.1.jar;../lib/daikon-0.31.8.jar;../lib/daikon-exception-0.31.8.jar;../lib/dom4j-1.6.1.jar;../lib/ehcache-2.10.6.jar;../lib/filecopy.jar;../lib/force-partner-api-46.0.0.jar;../lib/force-wsc-46.0.0.jar;../lib/guava-20.0.jar;../lib/httpclient-4.5.5.jar;../lib/httpcore-4.4.9.jar;../lib/jackson-annotations-2.9.0.jar;../lib/jackson-core-2.9.9.jar;../lib/jackson-core-asl-1.9.14-TALEND.jar;../lib/jackson-databind-2.9.9.jar;../lib/jackson-mapper-asl-1.9.14-TALEND.jar;../lib/jakarta-oro-2.0.8.jar;../lib/jakarta.xml.bind-api-2.3.2;../lib/jasypt-1.9.2.jar;../lib/javacsv-2.0.jar;../lib/javax.annotation_1.2.0.v201602091430.jar;../lib/javax.inject-1.jar;../lib/javax.servlet-api-3.1.0.jar;../lib/javax.ws.rs-api-2.1.jar;../lib/javax.wsdl_1.6.2.v201012040545.jar;../lib/jboss-serialization.jar;../lib/jcl-over-slf4j-1.7.25.jar;../lib/jettison-1.3.8.jar;../lib/joda-time-2.8.2.jar;../lib/joda-time-2.9.jar;../lib/json-20140107.jar;../lib/json-io-4.9.9-TALEND.jar;../lib/json-path-2.1.0.jar;../lib/json-smart-2.2.1.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;../lib/neethi-3.1.1.jar;../lib/opensaml-core-3.3.0.jar;../lib/opensaml-profile-api-3.3.0.jar;../lib/opensaml-saml-api-3.3.0.jar;../lib/opensaml-saml-impl-3.3.0.jar;../lib/opensaml-security-api-3.3.0.jar;../lib/opensaml-security-impl-3.3.0.jar;../lib/opensaml-soap-api-3.3.0.jar;../lib/opensaml-xacml-api-3.3.0.jar;../lib/opensaml-xacml-impl-3.3.0.jar;../lib/opensaml-xacml-saml-api-3.3.0.jar;../lib/opensaml-xacml-saml-impl-3.3.0.jar;../lib/opensaml-xmlsec-api-3.3.0.jar;../lib/opensaml-xmlsec-impl-3.3.0.jar;../lib/org.apache.commons.codec_1.6.0.v201305230611.jar;../lib/org.apache.commons.logging_1.2.0.v20180409-1502.jar;../lib/org.apache.log4j_1.2.15.v201012070815.jar;../lib/org.apache.oltu.oauth2.client-1.0.0.jar;../lib/org.apache.oltu.oauth2.common-1.0.0.jar;../lib/org.osgi.service.component.annotations-1.3.0.jar;../lib/paranamer-2.7.jar;../lib/pax-url-aether-2.4.7.jar;../lib/security-common-7.3.1-M3.jar;../lib/slf4j-api-1.7.25.jar;../lib/slf4j-api-1.7.26.jar;../lib/slf4j-api-1.7.5.jar;../lib/slf4j-log4j12-1.7.10.jar;../lib/slf4j-log4j12-1.7.5.jar;../lib/snappy-java-1.1.1.3.jar;../lib/spring-aop-5.1.4.RELEASE.jar;../lib/spring-beans-5.1.4.RELEASE.jar;../lib/spring-context-5.1.4.RELEASE.jar;../lib/spring-core-5.1.4.RELEASE.jar;../lib/spring-expression-5.1.4.RELEASE.jar;../lib/spring-web-5.1.4.RELEASE.jar;../lib/spring-webmvc-5.1.4.RELEASE.jar;../lib/stax-api-1.0-2.jar;../lib/stax2-api-3.1.4.jar;../lib/stringtemplate-3.2.1.jar;../lib/talend-codegen-utils.jar;../lib/talend-proxy-1.0.0.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/trove.jar;../lib/woodstox-core-asl-4.4.1.jar;../lib/wss4j-bindings-2.2.2.jar;../lib/wss4j-policy-2.2.2.jar;../lib/wss4j-ws-security-common-2.2.2.jar;../lib/wss4j-ws-security-dom-2.2.2.jar;../lib/wss4j-ws-security-policy-stax-2.2.2.jar;../lib/wss4j-ws-security-stax-2.2.2.jar;../lib/xmlschema-core-2.2.4.jar;../lib/xmlsec-2.1.2.jar;../lib/xz-1.5.jar;uploadassetintobynder_prod_1_10.jar;updateassetsinbynder_prod_0_1.jar;ecom_renameasset_bynder_sujob_prod_0_1.jar;renameanddispatchflatshotasset_prod_0_1.jar;updateimageinsalesforce_0_4.jar;renameasset_bynder_subjobprod_0_1.jar;' dev.uploadassetintobynder_prod_1_10.UploadAssetIntoBynder_PROD  --context=Default $args