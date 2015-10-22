#!/bin/bash

sudo rm -f /usr/local/sbin/rpi_contact_sensor.py
sudo cp -f rpi_contact_sensor.py /usr/local/sbin
sudo chown root:root /usr/local/sbin/rpi_contact_sensor.py
sudo chmod 0755 /usr/local/sbin/rpi_contact_sensor.py
sudo rm -f /etc/init.d/rpi_garage_sensor
sudo cp rpi_garage_sensor /etc/init.d/rpi_garage_sensor
sudo chown root:root /etc/init.d/rpi_garage_sensor
sudo chmod 0755 /etc/init.d/rpi_garage_sensor
sudo update-rc.d rpi_garage_sensor defaults
sudo service rpi_garage_sensor restart
sudo rm -f /etc/init.d/rpi_backdoor_sensor
sudo cp rpi_backdoor_sensor /etc/init.d/rpi_backdoor_sensor
sudo chown root:root /etc/init.d/rpi_backdoor_sensor
sudo chmod 0755 /etc/init.d/rpi_backdoor_sensor
sudo update-rc.d rpi_backdoor_sensor defaults
sudo service rpi_backdoor_sensor restart
