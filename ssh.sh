#!/bin/bash

ssh level02@$(ifconfig | grep 'inet ' | awk 'NR==2 {print $2}') -p 4242

