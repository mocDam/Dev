$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' '-Dmail.smtp.ssl.protocols=TLSv1.2' '-Dfile.encoding=UTF-8' -cp '.;../lib/routines.jar;../lib/checkArchive-1.1-20190917.jar;../lib/commons-compress-1.19.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/filecopy.jar;../lib/jakarta-oro-2.0.8.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;../lib/talend_DB_mssqlUtil-1.3-20190523.jar;../lib/talendcsv.jar;../lib/talendzip.jar;../lib/zip4j-1.3.3.jar;masterfile_products_0_34.jar;masterfile_extract_products_2_0_11.jar;masterfile_extract_products_1_0_11.jar;' dev.masterfile_products_0_34.MASTERFILE_PRODUCTS  $args