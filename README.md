# WarpClip — Design

Design system + assets + mockups ของ WarpClip.

> Sub-brand ของ **MoonieX**. Visual cohesion = dark + cosmic + warp speed.

## Structure

```
design/
├── README.md
├── WarpClip-Brand-Brief.md   ← brand voice, palette, type, motion
├── assets/
│   ├── logo/                  ← logo lockups (svg, png exports)
│   └── social/                ← OG image, profile pic, banners
├── tokens/                    ← design tokens (json) — sync ↔ webapp Tailwind
└── mockups/                   ← HTML/Figma exports สำหรับ review
```

## Workflow

ดู [`WarpClip-wikis/50-Workflows/Multi-Repo-Workflow.md`](https://github.com/PASAKON/WarpClip-wikis/blob/main/50-Workflows/Multi-Repo-Workflow.md).

- ไฟล์ใน `design/` **ไม่ ship production** — webapp consume เฉพาะ `tokens/` (ถ้า sync)
- Design change → cross-repo PR ไป webapp ถ้าต้อง implement

## Brand summary

- **Name:** WarpClip
- **Parent:** MoonieX Company (House of Brands)
- **Tone:** ใจดี + เร็ว + เชื่อใจได้ (creator-friendly, not enterprise-cold)
- **Palette:** Zinc 950 base · Indigo→Violet→Fuchsia accent · Emerald CTA (LINE)
- **Font:** Geist Sans (Latin + Thai-friendly fallback)

Full spec: [`WarpClip-Brand-Brief.md`](./WarpClip-Brand-Brief.md).
