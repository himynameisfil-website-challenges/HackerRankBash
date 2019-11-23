@test "Check that total is listed" {
	run sh LetsEcho.sh
	[ "$status" -eq 0 ]
	[ "$output" = "HELLO" ]
}

