#!/bin/bash

COMPOSE_CMD="docker compose"

if docker-compose --version >/dev/null 2>&1; then
    COMPOSE_CMD="docker-compose"
fi

$COMPOSE_CMD stop
$COMPOSE_CMD rm -f
rm -rf 700{0..5}
