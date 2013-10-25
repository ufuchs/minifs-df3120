#!/bin/bash

SD_CARD=/dev/sdc1

umount $SD_CARD

dd if=build-df3120/minifs-full-ext.img of=$SD_CARD bs=512

