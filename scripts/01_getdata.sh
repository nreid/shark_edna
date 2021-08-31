#!/bin/bash
#SBATCH --job-name=getdata
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 10
#SBATCH --mem=5G
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=ALL
#SBATCH --mail-user=first.last@uconn.edu
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

hostname
date

# set up data directory, symlink data
DATA=../data
mkdir -p $DATA

RAW=/labs/CBC/CGI_data/LBenoit_12S_July2021

ln -s $RAW/*fastq.gz $DATA/


