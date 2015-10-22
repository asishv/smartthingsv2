#!/bin/bash

sudo rm -f /usr/local/sbin/rpi_motion_sensor.py
sudo cp -f rpi_motion_sensor.py /usr/local/sbin
sudo chown root:root /usr/local/sbin/rpi_motion_sensor.py
sudo chmod 0755 /usr/local/sbin/rpi_motion_sensor.py
sudo rm -f /etc/init.d/rpi_motion_sensor
sudo cp rpi_motion_sensor /etc/init.d/rpi_motion_sensor
sudo chown root:root /etc/init.d/rpi_motion_sensor
sudo chmod 0755 /etc/init.d/rpi_motion_sensor
sudo update-rc.d rpi_motion_sensor defaults
sudo service rpi_motion_sensor restart
