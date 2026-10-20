#!/bin/bash
# Deploy this folder to GitHub Pages (hop_pot_sar_mal)
set -e
cd "$(dirname "$0")"
REPO=git@github.com:minkhantpaiii-bit/hop_pot_sar_mal.git
TMP=$(mktemp -d)
git clone -q "$REPO" "$TMP"
rsync -a --delete --exclude '.git' ./ "$TMP/"
cd "$TMP"
git add -A
git -c user.name=Emrys -c user.email=emrys@ebs.local commit -m "Update site $(date '+%F %H:%M')" || echo "· no changes"
git push
echo "✅ deployed → https://minkhantpaiii-bit.github.io/hop_pot_sar_mal/"
