#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/jaxb-api-2.3.1.jar:$ROOT_PATH/../lib/jaxb-impl-2.2.6-modified.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/../lib/mssql-jdbc.jar:$ROOT_PATH/masterfile_set_azure_storage_dynamics_0_2.jar: dev.masterfile_set_azure_storage_dynamics_0_2.MASTERFILE_SET_AZURE_STORAGE_DYNAMICS  --context=Default "$@"