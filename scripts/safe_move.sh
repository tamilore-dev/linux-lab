#!/usr/bin/env bash
usage(){
	echo "$0 <source_file> <destination_directory>"
	exit 1
}

[[ $# -ne  2 ]] && usage
