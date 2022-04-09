#!/bin/bash

echo -n "Input email address for 1password> "

read addr

op signin my.1password.com $addr
