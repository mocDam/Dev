#!/bin/sh
cd `dirname $0`
ROOT_PATH=`pwd`
java -Dtalend.component.manager.m2.repository=$ROOT_PATH/../lib -Xms256M -Xmx1024M -cp .:$ROOT_PATH:$ROOT_PATH/../lib/routines.jar:$ROOT_PATH/../lib/crypto-utils.jar:$ROOT_PATH/../lib/dom4j-1.6.1.jar:$ROOT_PATH/../lib/log4j-1.2.17.jar:$ROOT_PATH/buy_integration_0_1.jar:$ROOT_PATH/extract_for_dynamics_0_1.jar:$ROOT_PATH/buy_validation_0_1.jar:$ROOT_PATH/extract_for_dynamics_price_0_1.jar: dev.buy_integration_0_1.BUY_INTEGRATION  --context=Default "$@"