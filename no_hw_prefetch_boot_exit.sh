#!/bin/bash
./default_config.sh

mkdir -p no_hw_preftch_boot_exit
 wrmsr -a 0x1a4 15

taskset -c 5 ./run-single1.sh no_hw_preftch_boot_exit
