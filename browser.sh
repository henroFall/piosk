#!/bin/bash
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    chromium-browser \
      $(jq -r '.urls | map(.url) | join(" ")' ~/piosk/config.json) \
      --kiosk \
      --noerrdialogs \
      --disable-infobars \
      --no-first-run \
      --ozone-platform=wayland \
      --enable-features=OverlayScrollbar \
      --start-maximized
else
    chromium-browser \
      $(jq -r '.urls | map(.url) | join(" ")' ~/piosk/config.json) \
      --kiosk \
      --noerrdialogs \
      --disable-infobars \
      --no-first-run \
      --enable-features=OverlayScrollbar \
      --start-maximized
fi
