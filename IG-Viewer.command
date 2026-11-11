#!/bin/bash
# IG Viewer launcher (macOS) - automatic thumbnail capture, no share prompt.
# Keep next to instagram-viewer_x3.html. First time: chmod +x IG-Viewer.command
DIR="$(cd "$(dirname "$0")" && pwd)"
open -na "Google Chrome" --args --user-data-dir="$HOME/.igviewer-chrome" --auto-accept-this-tab-capture --no-first-run --no-default-browser-check "file://$DIR/instagram-viewer_x3.html"
