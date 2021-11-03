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
QUOTE="BTC"
REPEAT=1 #Repeat interval (Default is 1 hour)
TOP=4
echo "Enter market:"
read MARKET
echo "Enter quote:"
read QUOTE
echo "Enter price:"
read PRICE

## Execute buy bots
echo "Loaded variables - Starting Buy Bot for $MARKET"
	nefertiti buy \
	--exchange=$EXCHANGE \
	--market=$MARKET \
	--api-key=$API_KEY \
	--api-secret=$API_SECRET \
	--telegram-app-key=$TELEGRAM_KEY \
	--telegram-chat-id=$TELEGRAM_ID \
	--pushover-app-key=$PUSHOVER_APP_KEY \
	--pushover-user-key=$PUSHOVER_USER_KEY \
	--price=$PRICE \
	--repeat=$REPEAT \
	--quote=$QUOTE \
	--ignore=error

