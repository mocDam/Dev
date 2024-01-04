#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Xmx4096M -Dfile.encoding=UTF-8 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/mssql-jdbc.jar:$ROOT_PATH/../lib/talend_DB_mssqlUtil-1.3-20190523.jar:$ROOT_PATH/masterfile_extract_prices_check_0_13.jar: dev.masterfile_extract_prices_check_0_13.MASTERFILE_EXTRACT_PRICES_CHECK  --context=Default "$@"