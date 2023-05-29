#!/usr/bin/env bats
load test_helper

@test "($PLUGIN_COMMAND_PREFIX:help) help" {
  run dokku "$PLUGIN_COMMAND_PREFIX:help"
  assert_success
}
