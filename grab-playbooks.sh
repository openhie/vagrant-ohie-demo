#!/bin/bash
# This script grabs each repo needed to deploy OpenHIE and puts it in the correct folder to work with vagrant provisioning
# Requires: git
## Repo Vars
REPO_POC="https://github.com/openhie/playbook-ohie-poc.git"
REPO_CR="https://github.com/openhie/playbook-ohie-cr.git"
REPO_IOL="https://github.com/openhie/playbook-ohie-iol.git"
REPO_SHR="https://github.com/openhie/playbook-ohie-shr.git"
REPO_TS="https://github.com/openhie/playbook-ohie-ts.git"
REPO_PR="https://github.com/openhie/playbook-ohie-pr.git"
REPO_FR="https://github.com/openhie/playbook-ohie-fr.git"

#Set up POC
mkdir -p provisioning/poc
git clone $REPO_POC provisioning/poc
cp provisioning/poc/group_vars/all.example provisioning/poc/group_vars/all
#Set up CR
mkdir -p provisioning/cr
git clone $REPO_CR provisioning/cr
cp provisioning/cr/group_vars/all.example provisioning/cr/group_vars/all
#Set up IOL
mkdir -p provisioning/iol
git clone $REPO_IOL provisioning/iol
cp provisioning/iol/group_vars/all.example provisioning/iol/group_vars/all
#Set up SHR
mkdir -p provisioning/shr
git clone $REPO_SHR provisioning/shr
cp provisioning/shr/group_vars/all.example provisioning/shr/group_vars/all
#Set up TS
mkdir -p provisioning/ts
git clone $REPO_TS provisioning/ts
cp provisioning/ts/group_vars/all.example provisioning/ts/group_vars/all
#Set up PR
mkdir -p provisioning/pr
git clone $REPO_PR provisioning/pr
cp provisioning/pr/group_vars/all.example provisioning/pr/group_vars/all
#Set up FR
mkdir -p provisioning/fr
git clone $REPO_FR provisioning/fr
cp provisioning/fr/group_vars/all.example provisioning/fr/group_vars/all
