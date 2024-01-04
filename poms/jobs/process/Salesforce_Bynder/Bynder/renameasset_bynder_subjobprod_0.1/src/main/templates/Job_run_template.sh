#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -Dfile.encoding=UTF-8 -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/jakarta-oro-2.0.8.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/renameasset_bynder_subjobprod_0_1.jar:$ROOT_PATH/ecom_renameasset_bynder_sujob_prod_0_1.jar: dev.renameasset_bynder_subjobprod_0_1.RenameAsset_Bynder_SubjobPROD  --context=Default "$@"