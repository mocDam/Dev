%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -XX:-UseGCOverheadLimit -Xmx3048M -Xmx4096M -cp .;../lib/routines.jar;../lib/advancedPersistentLookupLib-1.2.jar;../lib/commons-collections-3.2.2.jar;../lib/commons-collections4-4.1.jar;../lib/commons-compress-1.19.jar;../lib/commons-lang3-3.8.1.jar;../lib/commons-math3-3.6.1.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/geronimo-stax-api_1.0_spec-1.0.1.jar;../lib/jboss-serialization.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;../lib/poi-4.1.0-20190523141255_modified_talend.jar;../lib/poi-ooxml-4.1.0-20190523141255_modified_talend.jar;../lib/poi-ooxml-schemas-4.1.0-20190523141255_modified_talend.jar;../lib/poi-scratchpad-4.1.0-20190523141255_modified_talend.jar;../lib/talendExcel-1.5-20190731.jar;../lib/talend_DB_mssqlUtil-1.3-20190523.jar;../lib/thashfile-3.1-20190910.jar;../lib/trove.jar;../lib/xmlbeans-3.1.0.jar;masterfile_extract_products_1_0_11.jar; dev.masterfile_extract_products_1_0_11.MASTERFILE_EXTRACT_PRODUCTS_1  --context=Default %*