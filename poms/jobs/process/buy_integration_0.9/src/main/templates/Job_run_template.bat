%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp .;../lib/routines.jar;../lib/activation.jar;../lib/checkArchive-1.1-20190917.jar;../lib/commons-compress-1.19.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/filecopy.jar;../lib/jakarta-oro-2.0.8.jar;../lib/log4j-1.2.17.jar;../lib/mail-1.4.jar;../lib/talend_file_enhanced_20070724.jar;../lib/talendcsv.jar;../lib/talendzip.jar;../lib/zip4j-1.3.3.jar;buy_integration_0_9.jar;buy_validation_0_9.jar;extract_for_dynamics_price_0_9.jar;extract_for_dynamics_0_9.jar; dev.buy_integration_0_9.BUY_INTEGRATION  %*