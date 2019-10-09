#!/bin/bash
Recipient="example@mail.com"
Subject="Greetings!"
Message="Welcome to our site"
`mail -s $Subject $Recipient <<< $Message`
# This should be send messages but does not send now.
