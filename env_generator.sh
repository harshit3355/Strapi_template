#!/bin/bash
APP_KEYS=$(node -e "console.log(require('crypto').randomBytes(32).toString('hex'))")
API_TOKEN_SALT=$(node -e "console.log(require('crypto').randomBytes(16).toString('base64'))")
ADMIN_JWT_SECRET=$(node -e "console.log(require('crypto').randomBytes(16).toString('base64'))")
TRANSFER_TOKEN_SALT=$(node -e "console.log(require('crypto').randomBytes(16).toString('base64'))")


# Export variables
export APP_KEYS
export API_TOKEN_SALT
export ADMIN_JWT_SECRET
export TRANSFER_TOKEN_SALT
export DATABASE_CLIENT
export DATABASE_FILENAME

# Optionally, write them to a .env file
echo "APP_KEYS=${APP_KEYS}" > .env
echo "API_TOKEN_SALT=${API_TOKEN_SALT}" >> .env
echo "ADMIN_JWT_SECRET=${ADMIN_JWT_SECRET}" >> .env
echo "TRANSFER_TOKEN_SALT=${TRANSFER_TOKEN_SALT}" >> .env
echo "DATABASE_CLIENT=sqlite" >> .env
echo "DATABASE_FILENAME=.tmp/data.db" >> .env

# Optionally print the variables to confirm
echo "APP_KEYS=${APP_KEYS}"
echo "API_TOKEN_SALT=${API_TOKEN_SALT}"
echo "ADMIN_JWT_SECRET=${ADMIN_JWT_SECRET}"
echo "TRANSFER_TOKEN_SALT=${TRANSFER_TOKEN_SALT}"
echo "DATABASE_CLIENT=sqlite"
echo "DATABASE_FILENAME=.tmp/data.db"
