#!/bin/bash
# Script Name: create_D-2_folders_and_files.sh
# Description: This script Creates Day-2 Folders and no of Specified files in it.
# Author: Aniket Khedkar
# Created Date: 2024-11-05
# Last Modified: 2024-11-05
# Version: 1.0

current_date=$(date +'%Y%m%d')
folder_arr=("folder1_" "folder2_" "folder3_" "folder4_" "folder5_" "folder6_" "folder7_" "folder8_")
for i in 1; do
        next_date=$(date -d "$current_date - 2 days" +'%Y%m%d')
        echo $next_date
        for folder in "${folder_arr[@]}"; do
                folder_name="$folder$next_date"
                echo $folder_name
                mkdir -p $folder_name
                for i in {1..51}; do
                        touch $folder_name/file$i.parquet
                done
        done
done