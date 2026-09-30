# tasks/video.md — video / short promo pack

**When to use:** the owner says video, clip, promo, explainer, slides, voice-over, subtitles,
"make me a 30-second thing about this".

**Output:** a finished video file (with narration and/or subtitles), plus the source files
so it can be re-cut without starting over.

---

## 1. First decision: which of the three routes?

Most failed AI videos fail here — the wrong route was chosen silently.

| Route | Use when | Method | Watch out for |
|:---|:---|:---|:---|
| **A — Precise** | Explaining a screen, app, product, process, numbers | **Lay out the frames as web pages** (HTML/CSS), screenshot them, then annotate (boxes, circles, arrows, captions) | Requires real screenshots/real content. This is the route that produces clean text — **image generation must never be used for text-bearing frames** |
| **B — Generative** | Story, comedy, mood, abstract, "from nothing" | Generate stills/clips with a generative tool, then **select strictly** | Generated text and hands are unreliable; expect to regenerate; have a fallback |
| **C — Hybrid** | Most real promos | Route A for anything with text/UI, Route B for background/mood inserts | Keep the two visually consistent (same palette, typeface, motion) |

**Rule:** state the route and why, in one line, before producing anything.

---

## 2. Pipeline

```
1. Script            short lines, one idea per line          → check: read aloud, ~2.2 words/sec
2. Narration         generate audio PER SEGMENT             → check: one file per line, no gaps inside
3. Measure           get the real duration of each segment  → check: durations measured, not guessed
4. Timeline          audio first: place segments with a gap → check: no overlap anywhere
5. Frames            build frames (route A: web layout)      → check: render and read every frame
6. Capture/compose   screenshot or render, then assemble     → check: play it, watch it end to end
7. Subtitles         from the same segment timing            → check: subtitle timing matches audio
8. Self-check        run the list in section 4               → check: all pass
```

### The two rules that prevent the classic disasters

**Audio first, frames second.**
Generate one audio file per script line, **measure each file's real duration**, and only then decide
how long each frame stays on screen. If the timeline is guessed first, narration overlaps —
sentence 2 starts before sentence 1 ends. Always leave a small gap (~0.2 s) between segments.

**Never one-shot the whole video.**
"Do everything and deliver" produces incoherent output. Each of the 8 steps above has its own check,
and you do not move on until that check passes.

---

## 3. Fixed rules for this task type

### Narration quality — check the voice-over line by line

- **Listen to every line before delivering.** Not the waveform — the actual voice.
- **Rate: moderate.** If a line feels rushed, fix the *sentence*, not the speed knob. A male voice
  usually needs a slower setting than a female one for the same script (observed: female ≈ `+5%`,
  male ≈ `0%` or below — never assumed, always listened to).
- **Watch for characters with multiple readings** (Chinese 多音字, and any similarly ambiguous word).
  Either rewrite the sentence to dodge the ambiguity, or force the intended reading. A wrong reading is
  a defect, not a nuance.
- **Shorten, do not compress.** A mechanical-sounding sentence usually needs fewer clauses and more
  punctuation (the engine turns punctuation into real pauses), not a higher rate.
- **Check the seams:** no overlapping narration, a small gap between lines, consistent loudness.
- If a line still sounds wrong after two attempts, **rewrite the sentence** — never ship a line the
  owner would notice.
- Record the chosen voice and rate in the pack, so the next video starts from a known-good combination.

### Text on screen **layout it, never generate it.** Generated lettering comes out wrong; laid-out text is exact.
- Annotations (boxes, circles, arrows, step numbers) are drawn, not generated.
- Keep a fixed set of 5–6 reusable frame layouts (opening / feature / comparison / steps / closing).
  Reuse beats reinvention; consistent motion and type make it look intentional.
- One idea per frame. If a frame needs two sentences, split it.
- Total length: short beats thorough. For social, aim 20–40 s.
- Every frame must be legible at phone size — check the smallest text.
- Do not use fonts/sizes/positions you cannot reproduce next time. The pack must stay re-runnable.
- Music, if any, sits well below narration; never let it mask speech.
- Export a master at a standard resolution/format, and keep the project files.

---

## 4. Self-check before delivering

```
[ ] durations measured from real audio files, not estimated
[ ] no audio overlap anywhere; gaps present between segments
[ ] every text-bearing frame was laid out (not generated)
[ ] smallest text is readable on a phone
[ ] watched the whole thing end to end, once, start to finish
[ ] subtitles (if any) match the audio timing
[ ] project files kept so a re-cut is possible
[ ] told the owner what is still rough
```

---

## 5. Known traps

| Trap | Symptom | Fix |
|:---|:---|:---|
| Robotic narration | Flat, mechanical delivery | Shorter sentences, more punctuation, moderate rate |
| Rushed male voice | Words run together | Lower the rate for male voices; listen to every line |
| Wrong character reading | A word is read with the wrong pronunciation | Rewrite the sentence or specify the reading (多音字) |
| Guessed timeline | narration overlaps at the seams | audio first, measure, then place |
| Generated text | garbled letters on screen | layout frames as web pages, screenshot them |
| One-shot generation | random visuals, nothing matches the script | 8-step pipeline with per-step checks |
| Frames too dense | unreadable on a phone | one idea per frame, bigger type |
| No source files kept | cannot fix one frame without redoing everything | always keep frames + audio + timeline |
| Music too loud | narration hard to hear | lower the bed; check on a phone speaker |

---

## 6. Tools for this task type

| Capability | Tool | Vetting |
|:---|:---|:---|
| Frame layout + screenshot | any browser + headless screenshot tool | 🟢 (local, no data leaves) |
| Screen capture | OS capture / headless renderer | 🟢 |
| Text-to-speech | choose per language; test the voice before a full run | 🟡 (check where the text is sent) |
| Video assembly | a command-line muxer (ffmpeg-class) | 🟢 local |
| Generative stills/clips (route B only) | pick after a comparison; check licence and watermark terms | 🟡 check terms |

Record the chosen tools in `skills.md`.

---

## 7. Lessons go here

When something in this pack fails or a better method appears, update the pack **and** add an entry
to `lessons.md`. The pack is the procedure; `lessons.md` is the history.
