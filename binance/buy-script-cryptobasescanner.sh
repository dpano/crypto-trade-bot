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
SIGNALS=cryptobasescanner.com
PRICE=0.0001
QUOTE=BTC
MIN=0.00000050
VOLUME=10
REPEAT=0.0084 #Repeat interval (Default is 1 hour)

## Execute buy bots
echo "Loaded variables - Starting Buy Bot for $SIGNALS signals"
	nefertiti buy \
	--exchange=$EXCHANGE \
	--api-key=$API_KEY \
	--api-secret=$API_SECRET \
	--telegram-app-key=$TELEGRAM_KEY \
	--telegram-chat-id=$TELEGRAM_ID \
	--pushover-app-key=$PUSHOVER_APP_KEY \
	--pushover-user-key=$PUSHOVER_USER_KEY \
	--repeat=$REPEAT \
	--signals=$SIGNALS \
	--price=$PRICE \
	--quote=$QUOTE \
	--dca \
	--crypto-base-scanner-key=$CRYPTO_BASE_SCANNER_API_KEY

