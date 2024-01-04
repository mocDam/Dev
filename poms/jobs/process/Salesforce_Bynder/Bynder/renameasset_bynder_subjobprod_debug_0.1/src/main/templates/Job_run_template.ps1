$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' '-Dfile.encoding=UTF-8' -cp '.;../lib/routines.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/filecopy.jar;../lib/jakarta-oro-2.0.8.jar;../lib/log4j-1.2.17.jar;../lib/mssql-jdbc.jar;renameasset_bynder_subjobprod_debug_0_1.jar;ecom_renameasset_bynder_sujob_prod_0_1.jar;' dev.renameasset_bynder_subjobprod_debug_0_1.RenameAsset_Bynder_SubjobPROD_DEBUG  $args