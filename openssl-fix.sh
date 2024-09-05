#!/bin/bash

check_version () {
    version=$1
    lower=$2
    upper=$3
    
    [ "$(printf '%s\n' "$lower" "$version" "$upper" | sort -V | head -n2 | tail -n1)" == "$version" ]
}

installed () {
    OPENSSL_VERSION=$(openssl version | awk '{print $2}')
    
    if check_version "$OPENSSL_VERSION" "1.0.1" "1.0.1h"; then
        echo "OpenSSL version $OPENSSL_VERSION detected, which may have .pod file issues."
        fix_path
    else
        echo "Your OpenSSL version $OPENSSL_VERSION is not affected by the .pod file issue."
        echo "No action is needed."
    fi
}

fix_path () {
    read -p "Please provide the path to your OpenSSL source directory: " OPENSSL_SOURCE_DIR
    
    if [ ! -d "$OPENSSL_SOURCE_DIR" ]; then
        echo "Invalid directory. Please make sure the path is correct."
        exit 1
    fi
    
    cp -rf "doc/crypto" "$OPENSSL_SOURCE_DIR/doc"
    cp -rf "doc/ssl" "$OPENSSL_SOURCE_DIR/doc"
    cp -rf "doc/apps" "$OPENSSL_SOURCE_DIR/doc"
    
    echo "The .pod files have been successfully replaced in the OpenSSL source directory."
    echo "You can now proceed with configuring NGINX."
}

read -p "$(echo -e 'Is the source code that you want to fix already installed in your machine?'$i' (y/n) ')" ok
if [[ $ok == "" ]]
then
    installed
else
    case $ok in
        y|Y|yes|Yes|YES) installed;;
        n|N|no|No|NO) fix_path;;
    esac
fi
