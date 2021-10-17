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
SIGNALS=MiningHamster
PRICE=0.000202
QUOTE=BTC
MIN=0.00000050
VOLUME=10
MININGHAMSTER_APP_KEY="OSyTf28NiacBrcXn7ZZ6zOFGZwd35meG"
REPEAT=0.0084 #Repeat interval (Default is 1 hour)

## Execute buy bots
echo "Loaded variables - Starting Buy Bot for MiningHamster signals"
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
	--min=$MIN \
	--volume=$VOLUME \
	--mining-hamster-key=$MININGHAMSTER_APP_KEY
	--ignore-error

