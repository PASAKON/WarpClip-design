# WarpClip — Brand Brief

> Source of truth for visual + tonal identity. Update นี้ → update [webapp `tokens/`](../webapp/) ถ้ามี implication.

> **v2.0 (CEO directive, 2026-05-23):** Theme pivot จาก dark zinc + indigo/violet/fuchsia gradient ไป **light B&W premium + sage accent**. ทั้งหมดต่อจากนี้ใช้สเปคนี้เป็นมาตรฐาน. เหตุผล: ความเรียบหรู, ความแตกต่างจากคู่แข่งวงการ video editing (ส่วนใหญ่ใช้ dark gradient), ความเป็น timeless brand.

## 1. Positioning

**One-liner:** "ตัดต่อ Short-Form Video เร็วระดับ Warp Speed."

WarpClip = บริการตัดต่อคลิปสั้นสำหรับ brand, agency, SaaS, และทีม corporate ที่ต้องการคุณภาพระดับ studio พร้อมความเร็วและความโปร่งใสด้านราคา. Speed + craft + price clarity = core promise.

## 2. Brand Architecture

- **Parent:** MoonieX Company (จดทะเบียนแล้ว), House of Brands strategy
- **Mention:** Footer พูดถึง subtle ("a service of MoonieX"), ไม่ co-brand บน hero
- **Independence:** marketing/voice/audience แยกจาก MoonieX trading line

ดู [ADR-0005](https://github.com/PASAKON/WarpClip-wikis/blob/main/40-Decisions/0005-mooniex-house-of-brands.md).

## 3. Tone & Voice

- **เร็ว, ใจดี, เชื่อใจได้** (not enterprise-cold, not influencer-hype)
- **ใช้ "เรา" ไม่ใช้ "ผม/ฉัน"**, ทีมเล็กแต่ professional
- **ภาษาไทยเป็นหลัก**, technical term ใช้อังกฤษได้ (TikTok, Reels, sub-title)
- **ห้าม clichés:** "เปลี่ยน clip ของคุณ", "สู่ระดับใหม่", "ครบจบในที่เดียว"
- **ตัวเลขชัด**, "24 ชม.", "990 บาท", "แก้ฟรี 3 ครั้ง"
- **ห้ามใช้ em-dash (—)** ในทุก copy. ลูกค้าไม่พิมแบบนั้น, มันเป็น AI tell. ใช้ comma, period, colon, paren แทน.

## 4. Color Palette (v2.0 B&W + sage)

| Role | Token | Hex | OKLch | Usage |
|------|-------|-----|-------|-------|
| Background | `bg` | `#FFFFFF` | `oklch(100% 0 0)` | page base |
| Surface | `surface` | `#F5F5F7` | `oklch(97% 0 0)` | cards, alt sections |
| Surface deep | `surface-deep` | `#000000` | `oklch(0% 0 0)` | inverted blocks (guarantees, final CTA) |
| Foreground | `fg` | `#1D1D1F` | `oklch(20% 0 0)` | body text |
| Foreground strong | `fg-strong` | `#000000` | `oklch(0% 0 0)` | headlines, marks |
| Foreground invert | `fg-invert` | `#FFFFFF` | `oklch(100% 0 0)` | text on dark surfaces |
| Muted | `muted` | `#6E6E73` | `oklch(54% 0 0)` | secondary text, metadata |
| Border | `border` | `#D2D2D7` | `oklch(86% 0 0)` | hairlines, card borders |
| Border subtle | `border-subtle` | `rgba(0,0,0,0.08)` | — | nav, footer dividers |
| **Accent** | `accent` | `#6B8E6F` | `oklch(58% 0.04 145)` | **sage**, signature, ใช้สูงสุด 2 จุด/หน้า |
| Accent soft | `accent-soft` | `#E8EFE9` | `oklch(94% 0.015 145)` | bg tint, hover state |

**Accent rule:** Sage `#6B8E6F` ใช้ได้สูงสุด **2 จุดต่อ surface**. Default 2 จุด = (1) italic "Clip" ใน wordmark, (2) LINE CTA button. หลีกเลี่ยงการใช้บน body text, icon ทุกตัว, gradient.

**No gradient signature.** Premium = restraint. ไม่มี multi-stop gradient ใน production.

## 5. Typography

| Use | Font | Weight | Style | Size guide |
|-----|------|--------|-------|------------|
| Display "Warp" | Geist Sans | 700 | normal | clamp(48px, 9vw, 148px) |
| Display "Clip" accent | Newsreader / Iowan Old Style | 500 | italic | match display height |
| Heading H2 | Geist Sans | 700 | normal | clamp(36px, 5vw, 72px) |
| Body | Geist Sans | 400 | normal | 17px base, 1.5 line-height |
| Mono / numeric | JetBrains Mono / SF Mono | 500 | normal | tabular-nums |
| Eyebrow / kicker | JetBrains Mono | 500 | uppercase | 11px, 0.22em tracking |

- Latin: Geist Sans + Newsreader (italic display) + JetBrains Mono (numeric/metadata)
- Thai: Apple SD Gothic / Noto Sans Thai (system fallback)
- **Mixed wordmark rule:** "Warp" sans bold + "Clip" italic serif. ห้าม flatten เป็น single typeface.
- ห้าม Inter / Roboto / Arial เป็น display face.

## 6. Spacing + Radius

- Section padding vertical: `clamp(80px, 10vw, 160px)`
- Container max: `1280px` content, `920px` long-form prose
- Card radius: `14px` (portfolio), `20px` (tiers, ba-wrap), `24px` (guarantees, hero reel `18px`)
- Pill / chip / CTA: `980px` (full pill)
- Border: hairline 1px `var(--border)`. ไม่มี shadow ยกเว้น modal/dropdown.

## 7. Motion

- Smooth scroll: `html { scroll-behavior: smooth }`
- Hover transition: 150-200ms
- IntersectionObserver fade-up (`opacity 0→1`, `translateY 20px→0`, 800ms) บน cards, quotes, tiers
- REC pulse บน reel meta dot (1.8s ease-in-out infinite)
- ห้าม confetti, loud bounce, parallax mouse-follow

## 8. Imagery Guidelines

- **Portfolio thumbnails:** 9:16 vertical, dark base `#000` + grid overlay (rgba(255,255,255,0.03), 40px tile). NO photo overlay ใน MVP (ยังไม่มี real footage).
- **Logo mark:** ดู `assets/logo/svg/`. Wordmark-led system: sans Warp + italic serif Clip. Mark icon (tile) = `WC` monogram ดำ-ขาว, ใช้ทุกที่ที่ต้องการ icon-only (favicon, watermark, social avatar).
- **OG image (1200×630):** light bg + wordmark center + tagline. ไม่ใส่ photo background.
- **Profile pic / favicon:** มี 2 variant, tile-black (W sage / dark mode) + tile-white (W black / light mode). Default = tile-black.

## 9. Voice Examples

OK:
- "ส่งงาน 24 ชม. ทุกครั้ง, ไม่เคยเลย deadline"
- "ราคา per คลิป โปร่งใส, ไม่มี hidden fee"
- "บรีฟผ่าน LINE, เราตอบใน 2 ชั่วโมง"

NOT OK:
- "เปิดมิติใหม่ของการสร้างสรรค์ video content"
- "ทีมมือโปรพร้อมเปลี่ยน vision ของคุณให้เป็นจริง"
- "Solution ครบวงจรสำหรับ creator ยุคใหม่"
- "ส่งงาน 24 ชม. ทุกครั้ง — ไม่เคยเลย deadline" (em-dash ห้าม)

## 10. Don't Do

- ใช้ stock photo คนทำท่าชี้ laptop
- Emoji ใน production headline (OK ใน feature card icon เฉพาะกรณีจำเป็น, default ไม่มี)
- **Dark mode เป็น primary** (v1.0 เก่า, deprecated). Dark inverted block OK ใน guarantees + final CTA, แต่ default page = light.
- **Multi-stop gradient** (indigo→violet→fuchsia เก่า, deprecated)
- **Emerald CTA** (เก่า, deprecated, ใช้ sage `#6B8E6F` แทน)
- Confetti / loud animation
- Sub-brand prefix "MoonieX" บน hero / hero CTA
- **Em-dash (—) ใน copy ทุกประเภท**
- ใช้ sage accent มากกว่า 2 จุดต่อ surface
- รวม display font 2 ตัวขึ้นไป (ยกเว้น "Warp" sans + "Clip" italic serif ใน wordmark, ซึ่งเป็น signature ที่อนุญาตเท่านั้น)

## 11. Two-Tracks Asset Note

Per CEO directive (2026-05-23), WarpClip มี **2 asset tracks**:

1. **Production (this brief, v2.0):** B&W primary + sage accent. ใช้ใน webapp production, customer-facing collateral, pitch deck สำหรับลูกค้าจริง.
2. **Legacy / archived (v1.0):** Dark zinc + indigo/violet/fuchsia gradient + emerald. ไม่ใช้ใหม่. เก็บไว้ใน git history เฉพาะกรณี reference อดีต.

Default ทุก asset ใหม่ = track 1 (v2.0).

## See Also

- [`assets/logo/README.md`](assets/logo/README.md) — logo system + usage rules
- [`tokens/colors.json`](tokens/colors.json) — machine-readable palette
- [`WarpClip-wikis/10-Architecture/Overview.md`](https://github.com/PASAKON/WarpClip-wikis/blob/main/10-Architecture/Overview.md)
- [ADR-0005 — House of Brands](https://github.com/PASAKON/WarpClip-wikis/blob/main/40-Decisions/0005-mooniex-house-of-brands.md)
