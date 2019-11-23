#!/usr/bin/env bash

@test "confirming dynamic welcome #1" {
	run sh PersonalizedEcho.sh << EOF
	Phil
EOF
	echo "Phil"
	[ "$status" -eq 0 ]
	[ "$output" = "Welcome Phil" ]
}

@test "confirming dynamic welcome #2" {
	run sh PersonalizedEcho.sh << EOF
	Cat
EOF
	[ "$status" -eq 0 ]
	[ "$output" = "Welcome Cat" ]
}

