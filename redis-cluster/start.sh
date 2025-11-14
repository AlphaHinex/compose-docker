# Allow LOCALHOST_IP to be set via environment, otherwise detect automatically
if [ -z "$LOCALHOST_IP" ]; then
    OS_TYPE="$(uname)"
    if [ "$OS_TYPE" = "Darwin" ]; then
        LOCALHOST_IP=$(ipconfig getifaddr en0)
    elif [ "$OS_TYPE" = "Linux" ]; then
        LOCALHOST_IP=$(hostname -I | awk '{print $1}')
    else
        echo "Warning: Unknown OS type '$OS_TYPE'. Please set LOCALHOST_IP manually."
        LOCALHOST_IP="127.0.0.1"
    fi
fi
echo $LOCALHOST_IP

COMPOSE_CMD="docker compose"

if docker-compose --version >/dev/null 2>&1; then
    COMPOSE_CMD="docker-compose"
fi

LOCALHOST_IP=$LOCALHOST_IP $COMPOSE_CMD up -d
