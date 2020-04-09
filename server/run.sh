#!/bin/sh

docker run \
    -v $PWD/UnrealTournament.ini:/opt/ut-server/System/UnrealTournament.ini \
    -p 7000-7081:7000-7081/udp \
    -p 7777-7781:7777-7781/udp \
    -p 27900:27900/udp \
    -i -t $@ ut-server
