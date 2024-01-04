#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dmail.smtp.ssl.protocols=TLSv1.2 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/mssql-jdbc.jar:$ROOT_PATH/../lib/talend_DB_mssqlUtil-1.3-20190523.jar:$ROOT_PATH/masterfile_prices_0_36.jar:$ROOT_PATH/masterfile_extract_prices_1_0_13.jar: dev.masterfile_prices_0_36.MASTERFILE_PRICES  --context=Default "$@"