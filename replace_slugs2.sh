#!/bin/sh
curl https://aaaaaaaaaaaadventu.re/replace_slugs.jq -o replace_slugs.jq
for f in $@; do tmp=$(mktemp); jq -f replace_slugs.jq "$f" > "$tmp"; mv "$tmp" "$f"; done
