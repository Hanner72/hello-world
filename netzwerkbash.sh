#! /bin/bash
#############################################
#          Created by Johann Danner         #
#    E-Mail: johann.danner(at)gmail.com     #
#   Feel free to copy & share this script   #
#############################################

# Change anything beyond this point
###########################################

# the IP of your raspberry
raspi_client_ip="192.168.2.2"
# subnetmask
raspi_client_nm="255.255.255.0"
# the IP of your router
raspi_client_gw="192.168.2.1"

# Don't change anything beyond this point
###########################################

# Reconfigure interfaces
cat > /etc/network/interfaces <<EOF
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet static
address $raspi_client_ip
gateway $raspi_client_gw
netmask $raspi_client_nm

auto eth0:0
iface eth0:0 inet static
address $raspi_gateway_ip
EOF
