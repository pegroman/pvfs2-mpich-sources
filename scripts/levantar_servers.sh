#!/bin/bash
#la primera vez comentar las dos primeras lineas dentro del for.
#para las siguientes pruebas descomentar!!!!

nodes=(node1 node2 node3 node4)

for node in ${nodes[@]}; do
	ssh $node "rm -rf /tmp/orangefs-server.log"
	ssh $node "cat /dev/null > /tmp/pvfs2-client.log"
	ssh $node "orangefs/sbin/pvfs2-server orangefs/etc/orangefs-server.conf -a ${node}"
done

nodes2=(node5 node6)

for nodo in ${nodes2[@]}; do
	ssh $nodo "cat /dev/null > /tmp/pvfs2-client.log"
done
