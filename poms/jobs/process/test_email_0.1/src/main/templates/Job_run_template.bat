%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -Dmail.smtp.ssl.protocols=TLSv1.2 -Dfile.encoding=UTF-8 -cp .;../lib/routines.jar;../lib/activation.jar;../lib/mail-1.4.7.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/log4j-1.2.17.jar;../lib/mail-1.4.jar;test_email_0_1.jar; dev.test_email_0_1.TEST_EMAIL  %*