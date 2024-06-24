#!/bin/bash
echo "APP_KEYS=${{ secrets.APP_KEYS }}" >> .env
echo "API_TOKEN_SALT=${{ secrets.API_TOKEN_SALT }}" >> .env
echo "ADMIN_JWT_SECRET=${{ secrets.ADMIN_JWT_SECRET }}" >> .env
echo "TRANSFER_TOKEN_SALT=${{ secrets.TRANSFER_TOKEN_SALT }}" >> .env
echo "DATABASE_CLIENT=${{ secrets.DATABASE_CLIENT }}" >> .env
echo "DATABASE_FILENAME=${{ secrets.DATABASE_FILENAME }}" >> .env
echo "JWT_SECRET=${{ secrets.JWT_SECRET }}" >> .env



echo "APP_KEYS=${APP_KEYS}"
echo "API_TOKEN_SALT=${API_TOKEN_SALT}"
echo "ADMIN_JWT_SECRET=${ADMIN_JWT_SECRET}"
echo "TRANSFER_TOKEN_SALT=${TRANSFER_TOKEN_SALT}"
echo "DATABASE_CLIENT=${DATABASE_CLIENT}"
echo "DATABASE_FILENAME=${DATABASE_FILENAME}"
echo "JWT_SECRET=${JWT_SECRET}"
