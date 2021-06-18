#! /bin/bash

#Jenkins only supports PEM formatted Key Pairs
ssh-keygen -m PEM -t rsa -b 4096
