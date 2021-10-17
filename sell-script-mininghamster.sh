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
EXCHANGE="BINA" #Exchange you want to run
API_KEY="k5VRMe4Ib9QYcHRJ91MH1lsJVRo3wufQYluf4HYgi6v3W9MYKzWYBreXKC66R1tf" #Exchange API Key
API_SECRET="sRwTOHpAu4JDZr3Vik09Mn5oOMyy2odY2OmQEuYmTa2y5cl2weRzmpr8aLu975Yp" #Exchange API Secret
API_PASS="" #Exchange API Passphrase
PUSHOVER_APP_KEY="aencmt56bpf8f5hmxqz5o6m43i32fg" #Pushover App Key
PUSHOVER_USER_KEY="u8byptje74q8wt5dxe4b8t8bkosmo9" #Pushover User Key
TELEGRAM_KEY="2073451316:AAHqXCX9goS5wQZ-MbjJFCD4q-GfSTEhTVc" #Telegram Bot Token
TELEGRAM_ID="Neferdim_bot" #Telegram channel ID
STRATEGY="0" #Selling strategy to use [0*|1|2|3|4]
NOTIFY="2" #Notification verbosity [0|1|2*|3]
MULT="1.05" #Set sell price multiplier, default is 5% (1.05*)
STOPLOSS="Y"
#HOLD=BTC-USD,BTC-USDT #Name of markets not to sell

## Execute sell bot
echo "Loaded Variables - Starting Sell Bot on $EXCHANGE"
./nefertiti sell \
	--exchange=$EXCHANGE \
	--api-key=$API_KEY \
	--api-secret=$API_SECRET \
	--telegram-app-key=$TELEGRAM_KEY \
	--telegram-chat-id=$TELEGRAM_ID \
	--pushover-app-key=$PUSHOVER_APP_KEY \
	--pushover-user-key=$PUSHOVER_USER_KEY \
	--stoploss=$STOPLOSS
#	--strategy=$STRATEGY \
#	--notify=$NOTIFY \
#	--mult=$MULT \
#	--ignore-error
