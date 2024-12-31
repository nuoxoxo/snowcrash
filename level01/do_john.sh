#!/bin/bash

wget https://download.openwall.net/pub/projects/john/contrib/macosx/john-1.8.0.9-jumbo-macosx_sse4.zip
tar -xvf john-1.8.0.9-jumbo-macosx_sse4.zip
cd john-1.8.0.9-jumbo-macosx_sse4/run
echo "42hDRfypTqqnw" > __test
./john __test
./john --show __test
cd ../..
rm -rf john*