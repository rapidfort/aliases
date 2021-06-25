#!/bin/bash -ex
sudo systemctl stop snapd.socket
sudo systemctl disable snapd.socket
sudo systemctl stop snapd.service
sudo systemctl disable snapd.service
