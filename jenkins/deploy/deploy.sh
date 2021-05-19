#!/bin/bash
docker login -u hiepph1707 -p $PASS
/usr/local/bin/docker-compose -f docker-compose-deploy.yml up -d
