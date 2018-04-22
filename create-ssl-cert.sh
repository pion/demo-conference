#!/usr/bin/env bash

echo "Creating SSL Certificates needed for signaler and www"
openssl req  -nodes -new -x509 -keyout localhost.key -out localhost.pem -days 365 -subj '/CN=localhost'

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp $DIR/*.key $DIR/*.pem $DIR/signaler
cp $DIR/*.key $DIR/*.pem $DIR/www
rm $DIR/*.key $DIR/*.pem
