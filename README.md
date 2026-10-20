# 🔥 HotPot — A Night of Steam & Stories

A single-page story website built from all 70 media files of the Telegram night
(64 photos + 6 reels, 08 Oct 2026 · 23:21 – 23:25).

## Open it

- Double-click **`index.html`** (works in Chrome / Safari / Edge), or
- `open ~/Documents/deepseek-harness/default-workspace/hotpot/index.html`

No build step, no server needed — it is a static site (`file://` friendly).

## What's inside

| Section | Description |
|---|---|
| Hero | Auto-playing muted video, giant gradient "HotPot" type, parallax |
| The Night | Short story + first & last frame of the night |
| Stats | 64 photos · 6 reels · 1 night · 70 media |
| Gallery | Masonry grid of all 64 photos with reveal animation |
| Reels | All 6 videos with posters and durations |
| Lightbox | One viewer for all 70 media — ← → keys, Esc, swipe, Save button |
| Reel wall | Auto-scrolling marquee of all 6 reels |
| Outro | Big outlined "HotPot" + Burmese line + footer |

## 🎵 Music — "HotPot Radio"

A custom-made 93-second lo-fi track (`assets/audio/hotpot-radio.mp3`, generated for this site)
plays in the floating **HotPot Radio** player (bottom-right):

- Autoplay is blocked by browsers → it starts on the **first tap / scroll / key press**
  (or press the ▶ button / `M` key anywhere).
- Live progress bar + time, animated equalizer, glow when playing.
- Music pauses automatically while a reel/video plays in the lightbox, and resumes on close.
- Toggle with the **♪** button in the nav, the player button, or the **M** key.
- Swap the track: replace `assets/audio/hotpot-radio.mp3` (keep the filename).

## Little extras

- **Steam canvas** particles in the hero + **ember particles** across the whole page
- **3D tilt & spotlight** on gallery hover, magnetic buttons
- **Section dots** navigation on the right side
- **Loader percentage** while the broth warms up
- **Custom cursor** with a glow ring (desktop)
- **Scroll progress bar**, reveal-on-scroll, parallax cards
- **Deep links**: `index.html?m=12` opens media #12 directly (`m=1…70`)
- **Surprise me** button opens a random frame
- Responsive: 4 → 3 → 2 → 1 column masonry
- Reduced-motion friendly (`prefers-reduced-motion`)

## Files

```
hotpot/
├── index.html          # the whole site (HTML + CSS + JS)
├── preview.jpg         # hero screenshot
├── README.md
└── assets/
    ├── photos/         # 64 full-size photos (max 1200px, JPG)
    ├── thumbs/         # 64 grid thumbnails (max 640px)
    ├── videos/         # 6 MP4 reels
    └── posters/        # 6 video posters
```

Fonts are loaded from Google Fonts (Playfair Display + Space Grotesk);
without internet the site falls back to system serif/sans.


## 🌍 Hosting

Live now via **Cloudflare quick tunnel** + local static server:

```
python3 -m http.server 8088 --bind 127.0.0.1
~/bin/cloudflared tunnel --url http://127.0.0.1:8088 --no-autoupdate
```

or just run **`./host.sh`** (prints a fresh public URL).

> Quick-tunnel URLs are temporary: the URL changes whenever cloudflared restarts,
> and the page is only online while this Mac is on. For permanent hosting use
> GitHub Pages / Cloudflare Pages / Netlify.
