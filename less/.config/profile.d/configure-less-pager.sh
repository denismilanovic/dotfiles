#!/bin/sh
export PAGER=/usr/bin/less
LESS=$(echo "${LESS}" | tr -d RM)
export LESS="${LESS}RM"
