#!/bin/bash

nodes=(node1 node2 node3 node4 node5 node6)

for node in ${nodes[@]}; do
	#ssh $node "source ./cliaux && source ./serveraux"
	ssh $node "source ./serveraux"
done
