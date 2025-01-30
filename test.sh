#!/bin/bash

# Loop through each environment variable and encode it in base64
# for name in $(env | cut -d= -f1); do
#     value=$(printenv "$name")
#     base64_encoded=$(echo -n "$value" | base64)
#     echo "$name=$base64_encoded"
# done
for name in $(env | cut -d= -f1); do
    echo "$name"
done
