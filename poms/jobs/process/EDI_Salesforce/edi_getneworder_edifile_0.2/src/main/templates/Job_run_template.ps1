$fileDir = Split-Path -Parent $MyInvocation.MyCommand.Path
cd $fileDir
java '-Dtalend.component.manager.m2.repository=%cd%/../lib' '-Xms256M' '-Xmx1024M' -cp '.;../lib/routines.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/filecopy.jar;../lib/jakarta-oro-2.0.8.jar;../lib/log4j-1.2.17.jar;edi_getneworder_edifile_0_2.jar;' dev.edi_getneworder_edifile_0_2.EDI_getNewOrder_EDIFile  --context=Production $args