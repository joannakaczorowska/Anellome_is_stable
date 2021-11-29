###Script for Shannon index calculation
library("vegan")
library("tidyverse")
library("dplyr")
library("reshape2")
library(ggpubr)
library("svglite")

setwd("C:/Users/jkacz/Documents/PhD/Anellome_paper/Reads_and_contigs_count_graph")

count_S3S4 <- read_csv("count_S3_S4.csv")
view(count_S3S4)

### total read
ggplot(count_S3S4,aes(x = subject, y = total_read)) +
  geom_boxplot(aes(fill = subject)) +
  theme(aspect.ratio = 4/3) +
  labs(y = "Total reads", x = "") +
  stat_compare_means() +
  theme(legend.position = "none") +
  ggsave("box_reads.svg")

### AV read
### Comparison of number pf reads that map to the anellovirus genomes

ggplot(count_S3S4,aes(x = subject, y = av_read)) +
  geom_boxplot(aes(fill = subject)) +
  theme(aspect.ratio = 4/3) +
  labs(y = "Reads mapping to unique AV genomes", x = "") +
  stat_compare_means() +
  theme(legend.position = "none") +
  ggsave("box_AVreads.svg")

### Total contigs

ggplot(count_S3S4,aes(x = subject, y = total_1000contig)) +
  geom_boxplot(aes(fill = subject)) +
  theme(aspect.ratio = 4/3) +
  labs(y = "Number of 1000 bp contigs", x = "") +
  stat_compare_means() +
  theme(legend.position = "none") +
  ggsave("box_contigs.svg")

### AV contigs
### Comparison of number of anellovirus contigs

ggplot(count_S3S4,aes(x = subject, y = av_contig)) +
  geom_boxplot(aes(fill = subject)) +
  theme(aspect.ratio = 4/3) +
  labs(y = "Number of AV contigs", x = "") +
  stat_compare_means() +
  theme(legend.position = "none") +
  ggsave("box_AVcontigs.svg")