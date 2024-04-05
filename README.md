# PLDI 2024 Artifact Evaluation: "Quest Complete: the Holy Grail of Gradual Security"

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.10789774.svg)](https://doi.org/10.5281/zenodo.10789774)

This research artifact contains meta-theoretic results for LambdaIFCStar,
a gradual security-typed programming language, mechanized in the Agda
proof assistant. We have created a Docker container image which contains
our Agda code and its dependencies, so that other researchers can easily
verify, reproduce, and improve upon our results.

## Getting Started

(The steps in this section take about 5 minutes.)

1. Download the Docker image `pldi2024-ae_latest.tar.gz`
2. Load the Docker image:
```
$ docker load --input ./pldi2024-ae_latest.tar.gz
2fd44901e888: Loading layer [==================================================>]  263.7MB/263.7MB
5f70bf18a086: Loading layer [==================================================>]  1.024kB/1.024kB
f83f9af059e6: Loading layer [==================================================>]  256.3MB/256.3MB
736ea9f82513: Loading layer [==================================================>]  258.5MB/258.5MB
90c7c8adf1be: Loading layer [==================================================>]  503.3MB/503.3MB
7d4ef156564d: Loading layer [==================================================>]  2.645MB/2.645MB
c5ef6cc5fb87: Loading layer [==================================================>]  4.997MB/4.997MB
bf0928b12c9d: Loading layer [==================================================>]  17.41kB/17.41kB
c5004e0f9c15: Loading layer [==================================================>]  1.318MB/1.318MB
a62207715b57: Loading layer [==================================================>]  4.096kB/4.096kB
db72a69b9ff3: Loading layer [==================================================>]  80.54MB/80.54MB
Loaded image: pldi2024-ae:latest
```
3. Make sure that the image shows up as `pldi2024-ae`:
```
$ docker images
REPOSITORY                   TAG       IMAGE ID       CREATED         SIZE
pldi2024-ae                  latest    fab535c6e3b5   3 hours ago     1.36GB
```
4. Run the Docker container using the following command:
```
$ docker run --rm pldi2024-ae make
Checking all proofs ...
/usr/bin/env agda src/Proofs.agda
```
Congratulations! The proofs are now automatically checked by Agda.

## Step-by-Step Instructions

The [README](everything/README.md) file in the source code directory maps
Agda code files to the theorems, lemmas, and definitions in the paper.
