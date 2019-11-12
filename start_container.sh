#!/bin/bash
img='whoisju1/kube-test'

docker service rm $(docker service ls -q) \
&& docker image build -t $img . \
&& docker image push $img \
&& docker image rm $img \
&& docker stack deploy -c ./docker-compose.yml kube-test \
&& echo "------ services ----- " \
&& docker service ls \
&& echo " ----- containers in service ----- " \
&& docker service ps $(docker service ls -q)
