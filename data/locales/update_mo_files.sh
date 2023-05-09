#!/bin/bash

for lang in [a-z][a-z]
do
    msgfmt -o $lang/LC_MESSAGES/wmk.mo $lang/LC_MESSAGES/wmk.po
done
