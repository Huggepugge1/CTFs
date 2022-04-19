#!/bin/bash
echo "Any string longer than 16 character" > message.txt
nc saturn.picoctf.net 51110 < message.txt
