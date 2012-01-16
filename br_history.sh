#!/bin/sh

sort $HOME/.br/history|uniq -c |sort -nr| grep $1 |sed 's/^ *[0-9]* //'|sed '15,$d'
