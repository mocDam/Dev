$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' '-Dmail.smtp.ssl.protocols=TLSv1.2' '-Dfile.encoding=UTF-8' -cp '.;../lib/routines.jar;../lib/jaxb-api-2.3.1.jar;../lib/jaxb-impl-2.2.6-modified.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/jakarta-oro-2.0.8.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;../lib/talend_DB_mssqlUtil-1.3-20190523.jar;copy_of_masterfile_prices_0_35.jar;masterfile_set_azure_storage_dynamics_0_2.jar;' dev.copy_of_masterfile_prices_0_35.Copy_of_MASTERFILE_PRICES  $args