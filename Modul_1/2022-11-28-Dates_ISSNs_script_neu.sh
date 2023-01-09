#!/bin/bash

sed '/^#/d' 2022-11-28-Article_list_dirty.tsv | sed 's/^IMPORTANT\s\s//g' | sed '/^VERY/d' | sed '/^$/d' | cut -f5,12 | sed 's/^ISSN:\s*//' | sed 's/issn:\s*//' | sed 's/Issn:\s*//' | sort -n | uniq > 2022-11-28-Dates_and_ISSNs_NiKa_02.tsv
