#!/bin/bash
# Serve HotPot locally and expose it publicly with a Cloudflare quick tunnel.
# Usage: ./host.sh        (Ctrl+C to stop)
cd "$(dirname "$0")" || exit 1
PORT="${PORT:-8088}"
echo "▶ local:  http://127.0.0.1:$PORT"
python3 -m http.server "$PORT" --bind 127.0.0.1 &
SERVER_PID=$!
trap 'kill $SERVER_PID 2>/dev/null' EXIT
if command -v cloudflared >/dev/null 2>&1; then
  cloudflared tunnel --url "http://127.0.0.1:$PORT" --no-autoupdate
else
  echo "cloudflared not in PATH — trying ~/bin/cloudflared"
  ~/bin/cloudflared tunnel --url "http://127.0.0.1:$PORT" --no-autoupdate
fi
