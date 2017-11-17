#!/bin/bash

# add to permanent rules
# 3000: Rails default HTTP port
firewall-cmd --zone=public --add-port=3000/tcp --permanent

# reload the firewall to make the changes take effect
firewall-cmd --reload
