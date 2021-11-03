#!/bin/bash
set -eu
##########
# Buy Scripting Template for Nefertiti Cryptotrader Bot
# Created by github.com/d00vy
#
# More information at: https://d00vy.com/blog/how_setup_nefertiti_cryptotrader_bot/
# Nefertiti Documentation: https://nefertiti-tradebot.com/
##########

## Define variables
EXCHANGE="GDAX" #Exchange you want to run
QUOTE=ETH
STOPLOSS=Y
MULTIPLIER=1.05
#HOLD=BTC-USD,BTC-USDT #Name of markets not to sell

## Execute sell bot
echo "Loaded Variables - Starting Sell Bot on $EXCHANGE"
	nefertiti sell \
	--exchange=$EXCHANGE \
	--api-key=$CB_API_KEY \
	--api-secret=$CB_API_SECRET \
        --api-passphrase=$CB_API_PASSPHRASE \
	--telegram-chat-id=$TELEGRAM_ID \
	--pushover-app-key=$PUSHOVER_APP_KEY \
	--pushover-user-key=$PUSHOVER_USER_KEY \
	--quote=$QUOTE

