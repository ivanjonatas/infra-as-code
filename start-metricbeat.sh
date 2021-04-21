#! /bin/bash
sudo service metricbeat start 
sudo metricbeat modules enable system 
sudo metricbeat setup