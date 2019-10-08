#!/bin/bash
Recipient="gokhangndz@gmail.com"
Subject="Greetings!"
Message="Welcome to our site"
`mail -s $Subject $Recipient <<< $Message`
