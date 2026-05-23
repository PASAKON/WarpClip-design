# WarpClip Logo

Source files + raster exports for the WarpClip brand. Closes design Issue #1.

## Files

```
assets/logo/
├── svg/
│   ├── mark-color.svg              ← W on gradient tile (primary app icon)
│   ├── mark-white.svg              ← W stroke only, white, transparent bg
│   ├── mark-black.svg              ← W stroke only, black, transparent bg
│   ├── mark-tile-white.svg         ← W black on white rounded tile
│   ├── mark-tile-black.svg         ← W white on black rounded tile
│   ├── wordmark-white.svg          ← "WarpClip" Geist Bold, white
│   ├── wordmark-black.svg          ← "WarpClip" Geist Bold, black
│   ├── wordmark-gradient.svg       ← "WarpClip" Geist Bold, indigo→fuchsia
│   ├── lockup-horizontal-color.svg ← mark + wordmark (header use, dark text)
│   ├── lockup-horizontal-white.svg
│   ├── lockup-horizontal-black.svg
│   ├── lockup-stacked-color.svg    ← mark above wordmark (square format)
│   ├── lockup-stacked-white.svg
│   └── lockup-stacked-black.svg
└── png/
    ├── mark-{color,white,black,tile-white,tile-black}-{24,32,48,64,128,256,512}.png
    ├── wordmark-{white,black,gradient}-{64,128,256}.png    (height in px)
    ├── lockup-horizontal-{color,white,black}-{64,128,256}.png
    └── lockup-stacked-{color,white,black}-{256,512,1024}.png  (width in px)
```

Fonts vendored at `assets/fonts/Geist-{Bold,SemiBold,Medium,Regular}.woff2` (SIL OFL).

## Design notes

**Mark.** Geometric W in white stroke on indigo→violet→soft-violet diagonal gradient.
Stroke width 13 on a 100-unit viewBox, round line caps and joins. Tile radius 22
(matches Apple icon corner ratio at 22%). The W path uses asymmetric valley
floors at x=32, x=68 and a center peak at (50, 44) for visual weight balance,
sitting slightly below the optical center of the tile.

**Wordmark.** Geist Bold at -4.5% tracking. Single weight, no italic, no mixed
families per Brand-Brief §5.

**Horizontal lockup.** Mark scaled to 80% of wordmark cap-square. 24px gap between
mark right edge and first wordmark glyph. Top baseline of W mark aligns with
wordmark cap-height.

**Stacked lockup.** Mark centered on canvas at 100px square. Wordmark centered
below at 56px font-size, 24px gap from mark bottom edge.

## Color variants

| Variant     | Use case                                | Files                |
|-------------|-----------------------------------------|----------------------|
| `color`     | Default. Dark wordmark + gradient mark  | webapp header, dark text on light landing pages |
| `gradient`  | Wordmark in gradient (no mark)          | hero headline accent, OG image |
| `white`     | White on dark surfaces                  | dark hero, footer on `bg-zinc-950` |
| `black`     | Black on light surfaces                 | press kit, B&W collateral, print |
| `tile-*`    | Standalone tile for favicon/avatar      | favicon, social profile pic |

## Clear space and minimum size

**Clear space.** Maintain a clear zone equal to the cap-height of the W mark
(roughly 26% of the mark's bounding square) on all four sides. Nothing, not
even a hairline rule, sits inside that zone.

**Minimum sizes.**

| Asset              | Web (digital) | Print  |
|--------------------|---------------|--------|
| Mark (standalone)  | 16px          | 8mm    |
| Horizontal lockup  | 96px wide     | 24mm   |
| Stacked lockup     | 64px wide     | 16mm   |
| Wordmark (no mark) | 64px wide     | 18mm   |

The lockups are tested for legibility at 24px, 32px, 64px header heights per
Issue #1 acceptance criteria.

## Do

- Use `mark-color.svg` for app icon, favicon, social avatar
- Use `lockup-horizontal-color.svg` in webapp `<Header>` and email signature
- Use `lockup-stacked-color.svg` in square formats (Instagram avatar, business
  card front, press kit cover)
- Use `wordmark-gradient.svg` for one hero headline accent per page, max one
- Place white variants on `bg-zinc-950` and darker
- Place black variants on `bg-zinc-100` and lighter

## Don't

- Don't recolor the gradient. Use `gradient` variant as is or fall back to white/black
- Don't stretch, skew, rotate, or apply drop shadow
- Don't place the mark on a busy photo without a 60%+ overlay
- Don't use `wordmark-gradient.svg` more than once per surface
- Don't pair the lockup with a competing logo without a divider rule

## Format guide

- **SVG**: source of truth. Embeds `@font-face` referencing
  `../fonts/Geist-Bold.woff2` (vendored in this repo). Renders correctly in
  any modern browser. For Illustrator/Figma import, convert text to outlines
  in app or use the PNG export.
- **PNG**: pre rendered via Chrome headless with Geist Bold embedded as
  base64 data URI. Use for chat platforms, slide decks, anywhere SVG isn't
  supported.

To re render PNGs after editing an SVG, run `tools/render-png.sh` (script in
`tools/` of this repo).

## Related

- Issue: [PASAKON/WarpClip-design#1](https://github.com/PASAKON/WarpClip-design/issues/1)
- Brand brief: [`/WarpClip-Brand-Brief.md`](../../WarpClip-Brand-Brief.md)
- Webapp integration PR: opened against `PASAKON/WarpClip-webapp` (replaces
  inline `W` in `src/components/Header.tsx`)
