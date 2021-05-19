#!/bin/bash
docker login -u hiepph1707 -p Huh!epph@1781523
/usr/local/bin/docker-compose -f docker-compose-deploy.yml up -d
