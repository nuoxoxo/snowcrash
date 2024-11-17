#!/bin/bash

ssh level00@$(ifconfig | grep 'inet ' | awk 'NR==2 {print $2}') -p 4242

