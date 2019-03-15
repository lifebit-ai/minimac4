#!/bin/bash

echo 
echo "Downloading Minimac3 package for test data"
wget ftp://share.sph.umich.edu/minimac3/Minimac3.v2.0.1.tar.gz
tar xvf Minimac3.v2.0.1.tar.gz && cd Minimac3/test

echo
echo "Runing Minimac4 test analyzes chromosome 6 from position 505988 to 873131"
minimac4 --refHaps refPanel.m3vcf.gz \
                --haps targetStudy.vcf \
                --chr 6 \
                --start 505988 \
                --end 873131 \
                --window 100 \
                --prefix testRun \
                --hapOutput \
                --doseOutput
