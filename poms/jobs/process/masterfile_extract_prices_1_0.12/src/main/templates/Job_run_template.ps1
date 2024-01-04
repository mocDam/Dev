$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' '-Xmx4096M' '-Dfile.encoding=UTF-8' -cp '.;../lib/routines.jar;../lib/advancedPersistentLookupLib-1.2.jar;../lib/commons-collections-3.2.2.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/jboss-serialization.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;../lib/talend_DB_mssqlUtil-1.3-20190523.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/thashfile-3.1-20190910.jar;../lib/trove.jar;masterfile_extract_prices_1_0_12.jar;' dev.masterfile_extract_prices_1_0_12.MASTERFILE_EXTRACT_PRICES_1  --context=Default $args