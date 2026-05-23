# WarpClip — Brand Brief

> Source of truth for visual + tonal identity. Update นี้ → update [webapp `tokens/`](../webapp/) ถ้ามี implication.

## 1. Positioning

**One-liner:** "ตัดต่อ Short-Form Video เร็วระดับ Warp Speed."

WarpClip = บริการตัดต่อคลิปสั้นสำหรับ content creator + SMB ที่ต้องการคุณภาพ agency
แต่ไม่อยากจ้าง agency เต็มตัว. Speed + craft + price clarity = core promise.

## 2. Brand Architecture

- **Parent:** MoonieX Company (จดทะเบียนแล้ว) — House of Brands strategy
- **Mention:** Footer พูดถึง subtle ("a service of MoonieX") — ไม่ co-brand บน hero
- **Independence:** marketing/voice/audience แยกจาก MoonieX trading line

ดู [ADR-0005](https://github.com/PASAKON/WarpClip-wikis/blob/main/40-Decisions/0005-mooniex-house-of-brands.md).

## 3. Tone & Voice

- **เร็ว + ใจดี + เชื่อใจได้** (not enterprise-cold, not influencer-hype)
- **ใช้ "เรา" ไม่ใช้ "ผม/ฉัน"** — ทีมเล็กแต่ professional
- **ภาษาไทยเป็นหลัก** — technical term ใช้อังกฤษได้ (TikTok, Reels, sub-title)
- **ห้าม clichés:** "เปลี่ยน clip ของคุณ", "สู่ระดับใหม่", "ครบจบในที่เดียว"
- **ตัวเลขชัด** — "24-48 ชม.", "990 บาท", "แก้ฟรี 3 ครั้ง"

## 4. Color Palette

| Role | Token | Hex | Tailwind |
|------|-------|-----|----------|
| Background | `bg-base` | `#09090b` | `zinc-950` |
| Surface | `bg-surface` | `#18181b` | `zinc-900` |
| Border | `border-subtle` | `rgba(255,255,255,0.05)` | `white/5` |
| Text primary | `fg-primary` | `#fafafa` | `zinc-100` |
| Text muted | `fg-muted` | `#a1a1aa` | `zinc-400` |
| Accent 1 | `accent-indigo` | `#6366f1` | `indigo-500` |
| Accent 2 | `accent-violet` | `#8b5cf6` | `violet-500` |
| Accent 3 | `accent-fuchsia` | `#d946ef` | `fuchsia-400` |
| CTA primary | `cta-line` | `#10b981` | `emerald-500` |

**Gradient signature:** `linear-gradient(to right, indigo-400, violet-400, fuchsia-400)` — ใช้ใน hero headline, ตัวเลข stats.

## 5. Typography

| Use | Font | Weight | Size guide |
|-----|------|--------|------------|
| Display | Geist Sans | 700 | 4xl–6xl |
| Heading | Geist Sans | 600 | 2xl–4xl |
| Body | Geist Sans | 400 | base–lg |
| Mono / number | Geist Sans (tabular) | 600 | depends |

- Latin: Geist Sans
- Thai: ใช้ system fallback (Apple SD Gothic / Noto Sans Thai)
- ห้ามผสม font ครอบครัวอื่นใน MVP

## 6. Spacing + Radius

- Section padding vertical: `py-20 sm:py-28`
- Container max: `max-w-6xl mx-auto`
- Card radius: `rounded-2xl`
- Pill / chip: `rounded-full`
- Section gap: `gap-4 sm:gap-6`

## 7. Motion

- Smooth scroll: `html { scroll-behavior: smooth }`
- Hover transition: `transition` (200ms default)
- Pulse: status dot ใน Hero header chip
- ห้าม animation บน first paint ที่กระทบ LCP — ใช้ CSS only

## 8. Imagery Guidelines

- **Portfolio thumbnails:** 9:16 aspect (vertical), gradient overlay บน dark base
- **Logo:** "W" mono mark on `bg-gradient-to-br from-indigo-500 to-violet-600`, 6-7 size variants
- **OG image:** 1200×630, ใช้ headline + W mark
- **Profile pic:** 640×640 ขั้นต่ำ, gradient bg

## 9. Voice Examples

OK:
- "ส่งงาน 24–48 ชม. ทุกครั้ง — ไม่เคยเลย deadline"
- "ราคา per คลิป โปร่งใส ไม่มี hidden fee"
- "บรีฟผ่าน LINE เราตอบใน 2 ชั่วโมง"

NOT OK:
- "เปิดมิติใหม่ของการสร้างสรรค์ video content"
- "ทีมมือโปรพร้อมเปลี่ยน vision ของคุณให้เป็นจริง"
- "Solution ครบวงจรสำหรับ creator ยุคใหม่"

## 10. Don't Do

- ใช้ stock photo คนทำท่าชี้ laptop
- Emoji ใน production headline (OK ใน feature card icon)
- Light mode (MVP = dark only)
- Confetti / loud animation
- Sub-brand prefix "MoonieX" บน hero / hero CTA

## See Also

- [`WarpClip-wikis/10-Architecture/Overview.md`](https://github.com/PASAKON/WarpClip-wikis/blob/main/10-Architecture/Overview.md)
- [ADR-0005 — House of Brands](https://github.com/PASAKON/WarpClip-wikis/blob/main/40-Decisions/0005-mooniex-house-of-brands.md)
