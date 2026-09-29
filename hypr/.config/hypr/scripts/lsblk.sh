#!/bin/bash

lsblk -o name,label,size,fsavail,fsver,fstype | bat
