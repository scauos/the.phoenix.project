#!/bin/bash

# Convert the .cer file into a .pem file:
openssl x509 -in aps_development.cer -inform der -out cert.pem

# Convert the private key’s .p12 file into a .pem file:
openssl pkcs12 -nocerts -in aps_development.p12 -out key.pem

# Finally, combine the certificate and key into a single .pem file
cat cert.pem key.pem > aps_development.pem

rm cert.pem
rm key.pem