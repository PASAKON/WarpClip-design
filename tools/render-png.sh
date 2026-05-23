#!/bin/bash
set -e
SVG_DIR="/Users/gob/Projects/WarpClip-design/assets/logo/svg"
FONT_DIR="/Users/gob/Projects/WarpClip-design/assets/fonts"
PNG_DIR="/Users/gob/Projects/WarpClip-design/assets/logo/png"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
GEIST_B64=$(base64 -i "$FONT_DIR/Geist-Bold.woff2")
NEWS_B64=$(base64 -i "$FONT_DIR/Newsreader-Italic.ttf")
TMPDIR=$(mktemp -d)

render_svg() {
  local svg_file="$1"
  local out_png="$2"
  local width="$3"
  local height="$4"
  local svg_content
  svg_content=$(cat "$svg_file")
  svg_content=${svg_content//"url('../../fonts/Geist-Bold.woff2') format('woff2')"/"url(data:font/woff2;base64,${GEIST_B64}) format('woff2')"}
  svg_content=${svg_content//"url('../../fonts/Newsreader-Italic.ttf') format('truetype')"/"url(data:font/ttf;base64,${NEWS_B64}) format('truetype')"}
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

# Wordmark (viewBox 600x140)
for variant in black white sage; do
  for h in 64 128 256; do
    w=$(( (h * 600) / 140 ))
    render_svg "$SVG_DIR/wordmark-${variant}.svg" "$PNG_DIR/wordmark-${variant}-${h}.png" "$w" "$h"
  done
done

# Mark monogram transparent (100x100)
for variant in black white sage; do
  for s in 64 128 256 512; do
    render_svg "$SVG_DIR/mark-${variant}.svg" "$PNG_DIR/mark-${variant}-${s}.png" "$s" "$s"
  done
done

# Mark tile (100x100)
for variant in black white; do
  for s in 64 128 256 512 1024; do
    render_svg "$SVG_DIR/mark-tile-${variant}.svg" "$PNG_DIR/mark-tile-${variant}-${s}.png" "$s" "$s"
  done
done

# Horizontal lockup (viewBox 680x100)
for variant in black white sage; do
  for h in 64 128 256; do
    w=$(( (h * 680) / 100 ))
    render_svg "$SVG_DIR/lockup-horizontal-${variant}.svg" "$PNG_DIR/lockup-horizontal-${variant}-${h}.png" "$w" "$h"
  done
done

# Stacked lockup (viewBox 360x240)
for variant in black white sage; do
  for w in 256 512 1024; do
    h=$(( (w * 240) / 360 ))
    render_svg "$SVG_DIR/lockup-stacked-${variant}.svg" "$PNG_DIR/lockup-stacked-${variant}-${w}.png" "$w" "$h"
  done
done

rm -rf "$TMPDIR"
echo "DONE"
