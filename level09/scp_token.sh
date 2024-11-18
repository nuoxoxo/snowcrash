#!/bin/bash

scp -P 4242 level09@$(ifconfig|grep 'inet '|awk 'NR==2 {print $2}'):/home/user/level09/token $(pwd)

