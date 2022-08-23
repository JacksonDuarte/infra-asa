#!/bin/bash

if [ $1 == "start" ];then
    if [ -z "$2" ];then
        echo "Endereço de IP nao encontrado"
        exit
    else
        cd dns/primary
        sed -i "s/PRIMARY/$2/" db.pe.asa.br
        sed -i "s/PRIMARY/$2/" named.conf.default-zones
        sed -i "s/SECONDARY/127.0.0.1/" db.pe.asa.br
        sed -i "s/SECONDARY/127.0.0.1/" named.conf.default-zones
        docker-compose up -d --build
    fi
else
    if [ $1 == "stop" ];then
        docker-compose down
    else
        echo "Opcao Invalida!"
        exit
    fi
fi