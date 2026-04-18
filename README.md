# Geopol-Forecast-Council

A lean geopolitical forecasting council. Spin-off of [Hypothesis-Council](https://github.com/danielrosehill/Hypothesis-Council), and a much cheaper cousin of my Snowglobe-style [Geopol-Forecaster](https://github.com/danielrosehill/Geopol-Forecaster) — which simulates ~40 actors over multiple timesteps and gets expensive fast.

This one skips the actor simulation. Instead:

1. **Grounding stack** — RSS feeds (Times of Israel, Al Jazeera, BBC World by default), a Perplexity Sonar briefing, and Tavily news search run in parallel as an explicit tool list. Each result is passed verbatim to the next stage.
2. **Council_Head** produces a single reconciled timestamped **SITREP**, a list of key actors with stated positions, and the load-bearing uncertainties that would most change the forecast.
3. **Council_Members** — a lineage-diverse panel (default: GLM, DeepSeek, Gemini, Claude, Kimi) — each independently return exactly **three concrete predictions per horizon**. Each prediction includes supporting reasoning, a supporting historical precedent, a counterveiling historical precedent, a single observable change factor, and a confidence value.
4. **Report_Author** clusters predictions across members, assigns consensus strength, flags sharp disagreements, and writes the synthesis.
5. **Deterministic rendering** — the Typst report is built from the checkpointed data with computed visualisations (confidence bars, tone classification, divergence heatmap) and absolute UTC timestamps for every horizon. A full variant appends every model's verbatim response as formatted text.

Designed for short-horizon forecasts on fast-moving situations (24h / 1w / 1m). For longer horizons or counterfactuals, the actor-simulation approach is still better.

## Usage

```bash
cp .env .env.local   # or edit .env; OPENROUTER_API_KEY required, TAVILY_API_KEY optional
pip install -e .

python -m forecast "How will the Iran-Israel-US conflict evolve?"

# Parameterise horizons, feeds, grounding tools, and role models:
python -m forecast "…" \
  --horizons "24h,72h,1w,1m" \
  --grounding-tools "rss,sonar,tavily" \
  --rss "https://www.timesofisrael.com/feed/,https://www.aljazeera.com/xml/rss/all.xml" \
  --council-head anthropic/claude-sonnet-4.6 \
  --council-members "z-ai/glm-5.1,deepseek/deepseek-v3.2,google/gemini-3-flash-preview,anthropic/claude-sonnet-4.6,moonshotai/kimi-k2.5" \
  --report-author anthropic/claude-sonnet-4.6

# Resume an interrupted run (loads whatever checkpoints exist, runs only missing stages):
python -m forecast --resume-latest
python -m forecast --resume 2026-04-18_235440
```

Outputs land in `reports/<timestamp>/`:

- `meta.json` — run parameters
- `grounding.json` — raw tool results (RSS, Sonar, Tavily)
- `head.json` — SITREP + key actors + uncertainties
- `members/<Name>.json` — per-member responses (one file each)
- `synthesis.json` — Report_Author clustered output
- `report.typ` / `report.pdf` — styled main report with cover page, numbered footer, visualisations
- `report-full.typ` / `report-full.pdf` — main report plus appendix containing every model's full response as formatted text
- `raw.json` — single-file dump of everything above

Stage checkpoints mean interrupted runs can resume without re-paying for completed stages. Delete any single checkpoint to re-run just that stage.

## Design notes

- **SITREP-first.** The Head stage pins down the current world state *before* any forecasting happens, so all members reason from an identical frame.
- **Structured member outputs.** Every prediction has the same six fields (`prediction`, `supporting_reasoning`, `historical_precedent_supporting`, `historical_precedent_counterveiling`, `change_factor`, `confidence`), validated via OpenRouter's JSON-schema response format with a regex fallback for models that don't honour the schema. A normalisation pass handles common structural drift.
- **Blind parallel member forecasts.** Members don't see each other's outputs — divergence in the final report is signal, not groupthink.
- **Three parameterised roles** — Council_Head, Council_Member, Report_Author — swappable independently.
- **Tone heuristic.** Every prediction is classified as escalatory / conciliatory / mixed by transparent keyword matching. Used to detect panel-wide bias and to visualise tone distribution per member. The heuristic is coarse; see the methodology section of any generated report.
- **Absolute horizon times.** Horizon strings (`24h`, `1w`, `1m`) are parsed and expressed as concrete UTC timestamps on the cover page and in the clustered-predictions section.

## Runs

Each run is a complete record — checkpoints, Typst sources, and both PDF variants are committed so the experiment can be audited.

| Date (UTC) | Scenario | Panel | Horizons | Main PDF | Full PDF |
|------|----------|-------|----------|----------|----------|
| 2026-04-18 23:54 | Iran-Israel-US conflict evolution | GLM · DeepSeek · Gemini · Claude · Kimi | 24h / 1w / 1m | [report.pdf](reports/2026-04-18_235440/report.pdf) | [report-full.pdf](reports/2026-04-18_235440/report-full.pdf) |
