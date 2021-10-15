#!/bin/bash
set -eu
##########
# Buy Scripting Template for Nefertiti Cryptotrader Bot
# Created by github.com/d00vy
#
# More information at: https://d00vy.com/blog/how_setup_nefertiti_cryptotrader_bot/
# Nefertiti Documentation: https://nefertiti-tradebot.com/
##########

## Define buy bot variables
EXCHANGE="BINA" #Exchange you want to run
SIZE="0.00035114" #Amount of base currency to spend per order
PRICE=0.000202
QUOTE="BTC"
MARKET="ETHBTC" #Markets to trade (USD-ETH,USD-BTC)
REPEAT=1 #Repeat interval (Default is 1 hour)
#SIZE=

## Execute buy bots
echo "Loaded variables - Starting Buy Bot for $MARKET"
	./nefertiti buy \
	--exchange=$EXCHANGE \
	--market=$MARKET \
	--api-key=$API_KEY \
	--api-secret=$API_SECRET \
	--telegram-app-key=$TELEGRAM_KEY \
	--telegram-chat-id=$TELEGRAM_ID \
	--pushover-app-key=$PUSHOVER_APP_KEY \
	--pushover-user-key=$PUSHOVER_USER_KEY \
	--price=$PRICE \
	--quote=$QUOTE \
	--repeat=$REPEAT \
	--ignore-error >> buy.log

