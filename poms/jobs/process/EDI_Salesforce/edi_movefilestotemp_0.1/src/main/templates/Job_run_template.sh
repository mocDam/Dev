#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/jaxb-api-2.3.1.jar:$ROOT_PATH/../lib/jaxb-impl-2.2.6-modified.jar:$ROOT_PATH/../lib/jaxws-api-2.3.1.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/filecopy.jar:$ROOT_PATH/../lib/jakarta-oro-2.0.8.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/edi_movefilestotemp_0_1.jar: dev.edi_movefilestotemp_0_1.EDI_MoveFilesToTemp  --context=Production "$@"