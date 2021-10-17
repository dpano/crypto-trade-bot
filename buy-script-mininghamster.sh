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
SIGNALS="MiningHamster"
PRICE=0.000202
QUOTE="BTC"
MIN=0.00000050
VOLUME=10
API_KEY="k5VRMe4Ib9QYcHRJ91MH1lsJVRo3wufQYluf4HYgi6v3W9MYKzWYBreXKC66R1tf" #Exchange API Key
API_SECRET="sRwTOHpAu4JDZr3Vik09Mn5oOMyy2odY2OmQEuYmTa2y5cl2weRzmpr8aLu975Yp" #Exchange API Secret
API_PASS="XXX" #Exchange API Passphrase (remove if not required)
PUSHOVER_APP_KEY="aencmt56bpf8f5hmxqz5o6m43i32fg" #Pushover App Key
PUSHOVER_USER_KEY="u8byptje74q8wt5dxe4b8t8bkosmo9" #Pushover User Key
TELEGRAM_KEY="2073451316:AAHqXCX9goS5wQZ-MbjJFCD4q-GfSTEhTVc" #Telegram Bot Token
TELEGRAM_ID="Neferdim_bot" #Telegram channel ID
MININGHAMSTER_APP_KEY="OSyTf28NiacBrcXn7ZZ6zOFGZwd35meG"
REPEAT=0.0084 #Repeat interval (Default is 1 hour)
#SIZE=

## Execute buy bots
echo "Loaded variables - Starting Buy Bot for MiningHamster signals"
	./nefertiti buy \
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

