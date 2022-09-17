#!/bin/bash

for i in 1 2 3; do
  echo "counter: $i"
done

filename='environment.yml'
n=1
while read line; do
# reading each line
echo "$line"
n=$((n+1))
done < $filename

while read requirement; do 
    conda install --yes $requirement || pip install $requirement;
    done < 'environment.yml' 
