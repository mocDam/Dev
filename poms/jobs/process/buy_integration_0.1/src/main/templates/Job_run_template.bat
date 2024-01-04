%~d0
cd %~dp0
java -Dtalend.component.manager.m2.repository="%cd%/../lib" -Xms256M -Xmx1024M -cp .;../lib/routines.jar;../lib/crypto-utils.jar;../lib/dom4j-1.6.1.jar;../lib/log4j-1.2.17.jar;buy_integration_0_1.jar;extract_for_dynamics_0_1.jar;buy_validation_0_1.jar;extract_for_dynamics_price_0_1.jar; dev.buy_integration_0_1.BUY_INTEGRATION  --context=Default %*