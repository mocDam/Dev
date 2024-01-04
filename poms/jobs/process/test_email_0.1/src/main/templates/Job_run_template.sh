#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dmail.smtp.ssl.protocols=TLSv1.2 -Dfile.encoding=UTF-8 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/activation.jar:$ROOT_PATH/../lib/mail-1.4.7.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/mail-1.4.jar:$ROOT_PATH/test_email_0_1.jar: dev.test_email_0_1.TEST_EMAIL  "$@"