#!/bin/bash

# Set Job Variables

echo 'Computing initial local variables for job'

JOB_SUIF_TEMPLATE="MSR/1011/lean"
echo "##vso[task.setvariable variable=JOB_SUIF_TEMPLATE;]${JOB_SUIF_TEMPLATE}"

JOB_DATE=$(date +%y-%m-%d)
echo "##vso[task.setvariable variable=JOB_DATE;]${JOB_DATE}"

JOB_DATETIME=$(date +%y-%m-%d'T'%H.%M.%S_%3N)
echo "JOB_DATETIME=${JOB_DATETIME}"
echo "##vso[task.setvariable variable=JOB_DATETIME;]${JOB_DATETIME}"

JOB_SUIF_TAG=$(SUIF_TAG)
JOB_SUIF_TAG=${JOB_SUIF_TAG:-main}
echo "##vso[task.setvariable variable=JOB_SUIF_TAG;]${JOB_SUIF_TAG}"

SUIF_FIXES_DATE_TAG=$(SUIF_FIXES_DATE_TAG)
SUIF_FIXES_DATE_TAG=${SUIF_FIXES_DATE_TAG:-latest}
  echo "##vso[task.setvariable variable=SUIF_FIXES_DATE_TAG;]${SUIF_FIXES_DATE_TAG}"