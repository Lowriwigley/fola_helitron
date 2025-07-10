#!/usr/bin/env bash
#SBATCH -J helitronscanner
#SBATCH --partition=short
#SBATCH --mem=1G
#SBATCH --cpus-per-task=2

# genome = $1
# output = $2

# Activate conda environment
source activate helitronscanner

# Download HelitronScanner files from https://sourceforge.net/projects/helitronscanner/
# wget https://sourceforge.net/projects/helitronscanner/files/latest/download -O HelitronScanner.zip
# unzip HelitronScanner.zip

echo "Starting HelitronScanner scanHead and scanTail"
HelitronScanner scanHead -g $1 -o "$2"_head -bs 0 -lf TrainingSet/head.lcvs
HelitronScanner scanTail -g $1 -o "$2"_tail -bs 0 -lf TrainingSet/tail.lcvs

echo "Starting HelitronScanner pairends"
HelitronScanner pairends -hs "$2"_head -ts "$2"_tail -o "$2"_paired

echo "Starting HelitronScanner draw"
HelitronScanner draw -p "$2"_paired -g $1 -o "$2" --pure

awk 'BEGIN {OFS="\t"} /^>/ { coord_string = $1; sub(/^>/, "", coord_string); split(coord_string, contig_parts, "_#SUB_"); contig = contig_parts[1]; split(contig_parts[2], range, "-"); start = range[1]; end = range[2]; size = $3; score_string = $5; sub(/scores=/, "", score_string); print contig, start, end, size, score_string }' "$2".hel.fa > "$2".hel.bed

echo "HelitronScanner completed."