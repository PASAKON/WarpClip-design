# WarpClip Logo (v2.0)

> **v2.0 (CEO directive, 2026-05-23):** B&W primary + sage `#6B8E6F` accent. Wordmark-led system with mixed type: Geist Bold "Warp" + Newsreader Italic 500 "Clip". Mark = "Wc" monogram on rounded tile. Pivot from v1.0 dark + indigo→violet→fuchsia gradient.

Source files + raster exports for the WarpClip brand. Closes design Issue #1.

## Files

```
assets/logo/
├── svg/
│   ├── wordmark-black.svg        ← Warp(sans/black) + Clip(italic-serif/black)
│   ├── wordmark-white.svg        ← Warp(sans/white) + Clip(italic-serif/white)
│   ├── wordmark-sage.svg         ← Warp(sans/black) + Clip(italic-serif/SAGE)
│   ├── mark-black.svg            ← "Wc" monogram, black on transparent
│   ├── mark-white.svg            ← "Wc" monogram, white on transparent
│   ├── mark-sage.svg             ← W(black) + c(SAGE) on transparent
│   ├── mark-tile-black.svg       ← "Wc" white on black rounded tile
│   ├── mark-tile-white.svg       ← "Wc" black on white tile (hairline border)
│   ├── lockup-horizontal-black.svg
│   ├── lockup-horizontal-white.svg
│   ├── lockup-horizontal-sage.svg ← black tile + Warp(black) + Clip(SAGE)
│   ├── lockup-stacked-black.svg
│   ├── lockup-stacked-white.svg
│   └── lockup-stacked-sage.svg    ← black tile + Warp(black) + Clip(SAGE)
└── png/
    ├── wordmark-{black,white,sage}-{64,128,256}.png        (height in px)
    ├── mark-{black,white,sage}-{64,128,256,512}.png        (square)
    ├── mark-tile-{black,white}-{64,128,256,512,1024}.png   (square)
    ├── lockup-horizontal-{black,white,sage}-{64,128,256}.png
    └── lockup-stacked-{black,white,sage}-{256,512,1024}.png (width in px)
```

Fonts vendored at `assets/fonts/`:
- `Geist-{Bold,SemiBold,Medium,Regular}.woff2` (SIL OFL)
- `Newsreader-Italic.ttf` (OFL, Google Fonts, weight 500 italic)

## Design notes

**Wordmark.** "Warp" set in Geist Bold at -5% tracking. "Clip" set in Newsreader Italic 500 at -1.5% tracking, slightly larger to compensate for italic visual weight. Baseline aligned. Mixed-typeface is the signature; do not flatten to single family.

**Mark.** "Wc" monogram: W in Geist Bold (sans), c in Newsreader Italic 500 (serif). Same mixed-type DNA as wordmark, compressed to icon scale. Tile radius 22 (Apple icon corner ratio at 22%).

**Horizontal lockup.** 80×80 tile + 24px gap + wordmark. Tile contains Wc monogram (no padding); wordmark sits at 78px font-size to align with tile cap-height optically.

**Stacked lockup.** Tile centered top, wordmark centered below, 56px font-size. Used for square formats (avatars, business cards, press kit cover).

## Color variants

| Variant   | When to use                                                          | Files                       |
|-----------|----------------------------------------------------------------------|-----------------------------|
| `black`   | On light backgrounds (default landing, white cards)                  | webapp header, body collateral |
| `white`   | On dark surfaces (final CTA block, dark hero overlays, footer dark)  | dark inverted sections      |
| `sage`    | Signature variant with italic Clip in sage. Use **once** per surface  | hero wordmark, brand showcase |
| `tile-black` | Square favicon, social avatar, watermark on light photo           | favicon, IG, business card  |
| `tile-white` | Avatar on dark surface (rare)                                     | dark IG bio, dark watermark |

**Accent rule.** Sage `#6B8E6F` appears at most **2 times per surface** total (per Brand-Brief §4). Default: (1) italic Clip in wordmark, (2) LINE CTA button. Avoid sage on body text, icon tints, or any decorative element beyond these two.

## Clear space and minimum size

**Clear space.** Equal to the cap-height of the W glyph (~33% of the mark tile) on all four sides. Nothing, not even a hairline rule, inside that zone.

**Minimum sizes.**

| Asset              | Web (digital) | Print  |
|--------------------|---------------|--------|
| Mark tile          | 24px          | 8mm    |
| Horizontal lockup  | 120px wide    | 28mm   |
| Stacked lockup     | 80px wide     | 18mm   |
| Wordmark (no mark) | 96px wide     | 22mm   |

The wordmark at 96px is legible across both Geist Bold + Newsreader Italic. Below that, switch to mark-only (tile).

## Do

- Use `lockup-horizontal-black.svg` in webapp `<Header>` and email signature
- Use `lockup-horizontal-sage.svg` once per surface for hero/showcase moments
- Use `mark-tile-black.svg` for favicon, social avatar, video watermark corner
- Use `wordmark-sage.svg` for one hero headline lockup per page
- Place white variants only on solid dark surfaces (>= #1D1D1F equivalent)
- Place black variants on white or near-white only (>= #F5F5F7)

## Don't

- Don't recolor sage. Use the variant as is or fall back to black/white.
- Don't flatten the mixed type. "Warp" must be sans, "Clip" must be italic serif.
- Don't stretch, skew, rotate, or apply drop shadow.
- Don't add a gradient (deprecated v1.0 signature).
- Don't use sage more than 2 times per surface (italic Clip + LINE CTA = the budget).
- Don't pair the lockup with a competing logo without a vertical divider rule (1px border).
- Don't use legacy v1.0 W-stroke mark anywhere. It is fully replaced by Wc monogram.

## Format guide

- **SVG**: source of truth. Embeds `@font-face` referencing `../../fonts/Geist-Bold.woff2` and `../../fonts/Newsreader-Italic.ttf` (both vendored). Renders in any modern browser. For Illustrator/Figma import, convert text to outlines in app or use the PNG export.
- **PNG**: pre-rendered via Chrome headless with both fonts embedded as base64 data URI. Use for chat, slide decks, anywhere SVG isn't supported.

To re-render PNGs after editing an SVG, run `tools/render-png.sh` from the repo root.

## Related

- Issue: [PASAKON/WarpClip-design#1](https://github.com/PASAKON/WarpClip-design/issues/1)
- Brand brief: [`/WarpClip-Brand-Brief.md`](../../WarpClip-Brand-Brief.md)
- Tokens: [`/tokens/colors.json`](../../tokens/colors.json)
- Webapp integration PR: opened against `PASAKON/WarpClip-webapp` (replaces inline `W` in `src/components/Header.tsx`)
