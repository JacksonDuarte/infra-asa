#!/bin/bash

if [ $1 == "primary" ];then
    if [ $2 == "start" ];then
        cd $1
        docker exec -it s1.prova.asa.br /etc/init.d/named start
    else
        if [ $2 == "stop" ];then
            cd $1
            docker exec -it s1.prova.asa.br /etc/init.d/named stop
        else
            if [ $2 == "restart" ];then
                cd $1
                docker exec -it s1.prova.asa.br /etc/init.d/named restart
            else
                echo "Invalid option!"
            fi
        fi
    fi
else
    if [ $1 == "secondary" ];then
        if [ $2 == "start" ];then
            cd $1
            docker exec -it s2.prova.asa.br /etc/init.d/named start
        else
            if [ $2 == "stop" ];then
                cd $1
                docker exec -it s2.prova.asa.br /etc/init.d/named stop
            else
                if [ $2 == "restart" ];then
                    cd $1
                    docker exec -it s2.prova.asa.br /etc/init.d/named restart
                else
                    echo "Invalid option!"
                fi
            fi
        fi
    fi
fi