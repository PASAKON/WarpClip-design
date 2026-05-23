#!/bin/bash
set -e
SVG_DIR="/Users/gob/Projects/WarpClip-design/assets/logo/svg"
FONT_DIR="/Users/gob/Projects/WarpClip-design/assets/fonts"
PNG_DIR="/Users/gob/Projects/WarpClip-design/assets/logo/png"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
FONT_B64=$(base64 -i "$FONT_DIR/Geist-Bold.woff2")
TMPDIR=$(mktemp -d)

render_svg() {
  local svg_file="$1"
  local out_png="$2"
  local width="$3"
  local height="$4"
  local svg_content
  svg_content=$(cat "$svg_file")
  svg_content=$(echo "$svg_content" | sed "s|url('../fonts/Geist-Bold.woff2') format('woff2')|url(data:font/woff2;base64,${FONT_B64}) format('woff2')|g")
  local html_file="$TMPDIR/render.html"
  cat > "$html_file" <<HTML
<!doctype html>
<html><head><meta charset="utf-8"><style>
html,body{margin:0;padding:0;background:transparent;width:${width}px;height:${height}px;overflow:hidden}
svg{width:${width}px;height:${height}px;display:block}
</style></head><body>${svg_content}</body></html>
HTML
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --default-background-color=00000000 \
    --window-size=${width},${height} --screenshot="$out_png" "file://$html_file" 2>/dev/null
}

for variant in white black gradient; do
  for h in 64 128 256; do
    w=$((h * 4))
    render_svg "$SVG_DIR/wordmark-${variant}.svg" "$PNG_DIR/wordmark-${variant}-${h}.png" "$w" "$h"
  done
done

for variant in color white black; do
  for h in 64 128 256; do
    w=$(( (h * 56) / 10 ))
    render_svg "$SVG_DIR/lockup-horizontal-${variant}.svg" "$PNG_DIR/lockup-horizontal-${variant}-${h}.png" "$w" "$h"
  done
done

for variant in color white black; do
  for w in 256 512 1024; do
    h=$(( (w * 240) / 360 ))
    render_svg "$SVG_DIR/lockup-stacked-${variant}.svg" "$PNG_DIR/lockup-stacked-${variant}-${w}.png" "$w" "$h"
  done
done

rm -rf "$TMPDIR"
echo "DONE"
