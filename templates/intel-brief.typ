// ============================================================================
// MILITARY INTELLIGENCE STYLE BRIEF — TYPST TEMPLATE
// ----------------------------------------------------------------------------
// Geopol Forecast Council
//
// Reusable Typst template for OSINT / intelligence-style assessments.
// All variable inputs live in the `data` dictionary at the bottom of this file
// — replace that block (or `#import` this file and call `intel-brief(data: ..)`)
// to render a new brief without touching the layout.
//
// Convention follows IC product norms loosely (cover sheet, BLUF, key
// judgments, body, signals, indicators & warnings, sources, dissent).
// Classification banner is for FORMAT ONLY — these are open-source products.
// ============================================================================

// ---------- THEME ----------------------------------------------------------

#let colors = (
  ink:        rgb("#0b0f14"),
  paper:      rgb("#fbfaf6"),
  rule:       rgb("#1f2937"),
  muted:      rgb("#4b5563"),
  faint:      rgb("#9ca3af"),
  accent:     rgb("#7a1f1f"),  // muted oxblood — IC-ish
  amber:      rgb("#b45309"),
  green:      rgb("#166534"),
  red:        rgb("#991b1b"),
  blue:       rgb("#1e3a8a"),
  classbg:    rgb("#7a1f1f"),
  classfg:    rgb("#ffffff"),
)

// Font stacks — Typst falls back left-to-right if a face is missing.
// To switch the brief into a different visual register, change a single stack.
#let mono  = ("JetBrains Mono", "IBM Plex Mono", "Fira Code", "DejaVu Sans Mono")
#let sans  = ("IBM Plex Sans", "Inter", "DejaVu Sans")
#let serif = ("IBM Plex Serif", "EB Garamond 12", "DejaVu Serif")
// Alternate stack: high-legibility / accessible variant.
// Swap `sans` to this for printed-brief-on-low-quality-paper situations.
#let sans-legible = ("Atkinson Hyperlegible", "IBM Plex Sans", "Inter")

// ---------- ATOMS ----------------------------------------------------------

#let class-banner(label) = block(
  width: 100%,
  fill: colors.classbg,
  inset: (x: 10pt, y: 5pt),
  align(center)[
    #text(font: sans, size: 9pt, weight: "bold", tracking: 2pt, fill: colors.classfg)[#upper(label)]
  ],
)

#let kv(k, v) = grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  text(font: mono, size: 8pt, fill: colors.muted)[#upper(k)],
  text(font: sans, size: 9pt, fill: colors.ink)[#v],
)

#let section(title) = {
  v(10pt)
  block(
    stroke: (bottom: 0.8pt + colors.rule),
    inset: (bottom: 3pt),
    width: 100%,
  )[
    #text(font: sans, size: 11pt, weight: "bold", tracking: 1.5pt)[#upper(title)]
  ]
  v(4pt)
}

#let subsection(title) = {
  v(6pt)
  text(font: sans, size: 9.5pt, weight: "bold", fill: colors.accent)[#upper(title)]
  v(2pt)
}

#let confidence-pill(level) = {
  let (fg, bg) = if lower(level) == "high" {
    (white, colors.green)
  } else if lower(level) == "moderate" or lower(level) == "medium" {
    (white, colors.amber)
  } else if lower(level) == "low" {
    (white, colors.red)
  } else {
    (colors.ink, colors.faint)
  }
  box(
    fill: bg,
    inset: (x: 5pt, y: 2pt),
    radius: 2pt,
    text(font: mono, size: 7pt, weight: "bold", fill: fg)[#upper(level)],
  )
}

#let priority-pill(p) = {
  let bg = if lower(p) == "critical" { colors.red }
    else if lower(p) == "high" { colors.amber }
    else if lower(p) == "medium" { colors.blue }
    else { colors.faint }
  box(
    fill: bg,
    inset: (x: 5pt, y: 2pt),
    radius: 2pt,
    text(font: mono, size: 7pt, weight: "bold", fill: white)[#upper(p)],
  )
}

#let bullet(content) = grid(
  columns: (10pt, 1fr),
  column-gutter: 6pt,
  row-gutter: 4pt,
  text(font: mono, size: 9pt, fill: colors.accent)[▸],
  content,
)

#let judgement-card(j) = block(
  width: 100%,
  inset: 10pt,
  stroke: (left: 2pt + colors.accent, rest: 0.4pt + colors.faint),
  radius: (right: 2pt),
  spacing: 8pt,
)[
  #grid(
    columns: (1fr, auto),
    column-gutter: 8pt,
    text(font: sans, size: 10pt, weight: "bold")[#j.title],
    confidence-pill(j.confidence),
  )
  #v(4pt)
  #text(font: serif, size: 10pt)[#j.body]
  #if "rationale" in j [
    #v(4pt)
    #text(font: sans, size: 8pt, fill: colors.muted, weight: "bold")[RATIONALE]
    #linebreak()
    #text(font: sans, size: 8.5pt, fill: colors.muted)[#j.rationale]
  ]
]

#let signal-card(s) = block(
  width: 100%,
  inset: 10pt,
  stroke: 0.4pt + colors.faint,
  radius: 2pt,
  spacing: 8pt,
)[
  #grid(
    columns: (1fr, auto, auto),
    column-gutter: 6pt,
    text(font: sans, size: 10pt, weight: "bold")[#s.name],
    if "class" in s { box(inset: (x: 4pt, y: 1pt), fill: colors.faint, text(font: mono, size: 7pt, fill: white)[#upper(s.class)]) },
    if "horizon" in s { text(font: mono, size: 7pt, fill: colors.muted)[#s.horizon] },
  )
  #v(4pt)
  #text(font: serif, size: 9.5pt)[#s.interpretation]
  #v(4pt)
  #text(font: sans, size: 8pt, fill: colors.muted, weight: "bold")[COLLECTION]
  #linebreak()
  #text(font: sans, size: 8.5pt)[#s.collection]
  #if "trap" in s [
    #v(4pt)
    #text(font: sans, size: 8pt, fill: colors.red, weight: "bold")[FALSE-SIGNAL TRAP]
    #linebreak()
    #text(font: sans, size: 8.5pt, fill: colors.muted)[#s.trap]
  ]
  #if "sources" in s and s.sources.len() > 0 [
    #v(4pt)
    #text(font: sans, size: 8pt, fill: colors.muted, weight: "bold")[SOURCES]
    #linebreak()
    #text(font: mono, size: 8pt, fill: colors.muted)[
      #s.sources.join(" · ")
    ]
  ]
]

#let iw-table(rows) = table(
  columns: (auto, 1fr, auto, auto),
  align: (left, left, center, center),
  stroke: 0.4pt + colors.faint,
  inset: 6pt,
  table.header(
    text(font: sans, size: 8pt, weight: "bold")[#upper("Indicator")],
    text(font: sans, size: 8pt, weight: "bold")[#upper("Threshold / Trigger")],
    text(font: sans, size: 8pt, weight: "bold")[#upper("Direction")],
    text(font: sans, size: 8pt, weight: "bold")[#upper("Priority")],
  ),
  ..rows.map(r => (
    text(font: sans, size: 9pt, weight: "bold")[#r.indicator],
    text(font: serif, size: 9pt)[#r.trigger],
    text(font: mono, size: 9pt, fill: if r.direction == "↑" { colors.red } else if r.direction == "↓" { colors.green } else { colors.muted })[#r.direction],
    priority-pill(r.priority),
  )).flatten()
)

// ---------- MAIN TEMPLATE FUNCTION -----------------------------------------

#let intel-brief(data: (:)) = {
  set document(
    title: data.at("title", default: "Intelligence Brief"),
    author: data.at("originator", default: "Geopol Forecast Council"),
  )
  set page(
    paper: "a4",
    margin: (top: 2.0cm, bottom: 2.0cm, left: 2.0cm, right: 2.0cm),
    header: context {
      let pn = counter(page).get().first()
      if pn > 1 {
        class-banner(data.at("classification", default: "OSINT // UNCLASSIFIED // FOR ANALYTIC USE"))
        v(-2pt)
        grid(columns: (1fr, auto),
          text(font: mono, size: 7pt, fill: colors.muted)[
            #data.at("title", default: "Intelligence Brief") · #data.at("serial", default: "")
          ],
          text(font: mono, size: 7pt, fill: colors.muted)[
            #data.at("date", default: "")
          ],
        )
      }
    },
    footer: context {
      class-banner(data.at("classification", default: "OSINT // UNCLASSIFIED // FOR ANALYTIC USE"))
      v(-2pt)
      align(center, text(font: mono, size: 7pt, fill: colors.muted)[
        Page #counter(page).display() of #context counter(page).final().first()
      ])
    },
    fill: colors.paper,
  )
  set text(font: sans, size: 9.5pt, fill: colors.ink, lang: "en")
  set par(justify: true, leading: 0.6em)

  // ---------- COVER ----------
  class-banner(data.at("classification", default: "OSINT // UNCLASSIFIED // FOR ANALYTIC USE"))
  v(40pt)

  align(center)[
    #text(font: mono, size: 9pt, fill: colors.muted, tracking: 3pt)[
      #upper(data.at("product_type", default: "Intelligence Assessment"))
    ]
    #v(8pt)
    #text(font: serif, size: 26pt, weight: "bold")[#data.at("title", default: "Untitled Brief")]
    #if "subtitle" in data [
      #v(6pt)
      #text(font: serif, size: 13pt, style: "italic", fill: colors.muted)[#data.subtitle]
    ]
  ]

  v(50pt)
  align(center, line(length: 30%, stroke: 0.6pt + colors.rule))
  v(20pt)

  block(width: 100%, inset: (x: 30pt))[
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 30pt,
      row-gutter: 8pt,
      kv("Originator", data.at("originator", default: "—")),
      kv("Serial", data.at("serial", default: "—")),
      kv("Date / Time Group", data.at("date", default: "—")),
      kv("As of", data.at("as_of", default: "—")),
      kv("Region / AOR", data.at("aor", default: "—")),
      kv("Reporting period", data.at("period", default: "—")),
      kv("Distribution", data.at("distribution", default: "Public")),
      kv("Handling", data.at("handling", default: "None")),
    )
  ]

  v(30pt)
  if "scenario" in data {
    block(
      width: 100%,
      inset: 12pt,
      stroke: (left: 3pt + colors.accent, rest: 0.4pt + colors.faint),
    )[
      #text(font: mono, size: 8pt, fill: colors.muted, weight: "bold")[SCENARIO]
      #v(4pt)
      #text(font: serif, size: 11pt)[#data.scenario]
    ]
  }

  pagebreak()

  // ---------- BLUF ----------
  if "bluf" in data {
    section("Bottom Line Up Front (BLUF)")
    block(
      width: 100%,
      inset: 12pt,
      fill: rgb("#f3f0e8"),
      stroke: (left: 3pt + colors.accent),
    )[
      #text(font: serif, size: 11.5pt, weight: "bold")[#data.bluf]
    ]
  }

  // ---------- KEY JUDGMENTS ----------
  if "key_judgments" in data and data.key_judgments.len() > 0 {
    section("Key Judgments")
    text(font: sans, size: 8pt, fill: colors.muted, style: "italic")[
      Confidence levels reflect source quality, corroboration, and the degree to which logical inference rests on assumption rather than reporting.
    ]
    v(6pt)
    for j in data.key_judgments {
      judgement-card(j)
      v(6pt)
    }
  }

  // ---------- SITUATION ----------
  if "situation" in data {
    section("Situation")
    text(font: serif, size: 10pt)[#data.situation]
  }

  // ---------- KEY ACTORS ----------
  if "key_actors" in data and data.key_actors.len() > 0 {
    section("Key Actors & Stated Positions")
    for a in data.key_actors {
      block(
        width: 100%,
        inset: 8pt,
        stroke: (bottom: 0.4pt + colors.faint),
        spacing: 4pt,
      )[
        #text(font: sans, size: 9.5pt, weight: "bold")[#a.name]
        #linebreak()
        #text(font: serif, size: 9.5pt, fill: colors.muted)[#a.position]
      ]
    }
  }

  // ---------- INDICATORS & WARNINGS ----------
  if "indicators" in data and data.indicators.len() > 0 {
    section("Indicators & Warning Matrix")
    iw-table(data.indicators)
  }

  // ---------- OSINT SIGNALS ----------
  if "signals" in data and data.signals.len() > 0 {
    section("Priority OSINT Signals")
    for s in data.signals {
      signal-card(s)
      v(6pt)
    }
  }

  // ---------- ALTERNATIVE ANALYSIS / DISSENT ----------
  if "alternatives" in data and data.alternatives.len() > 0 {
    section("Alternative Analysis & Dissent")
    for alt in data.alternatives {
      subsection(alt.label)
      text(font: serif, size: 10pt)[#alt.body]
      v(4pt)
    }
  }

  // ---------- ASSUMPTIONS / GAPS ----------
  if "assumptions" in data and data.assumptions.len() > 0 {
    section("Load-Bearing Assumptions")
    for a in data.assumptions { bullet(text(font: serif, size: 10pt)[#a]); v(2pt) }
  }
  if "gaps" in data and data.gaps.len() > 0 {
    section("Intelligence Gaps")
    for g in data.gaps { bullet(text(font: serif, size: 10pt)[#g]); v(2pt) }
  }

  // ---------- REPORTING CONTRADICTIONS ----------
  if "contradictions" in data and data.contradictions.len() > 0 {
    section("Reporting Contradictions")
    for c in data.contradictions { bullet(text(font: serif, size: 10pt)[#c]); v(2pt) }
  }

  // ---------- METHODOLOGY ----------
  if "methodology" in data {
    section("Methodology")
    text(font: serif, size: 9.5pt, fill: colors.muted)[#data.methodology]
  }

  // ---------- SOURCES ----------
  if "sources" in data and data.sources.len() > 0 {
    section("Source Appendix")
    table(
      columns: (auto, 1fr, auto, auto),
      align: (left, left, center, center),
      stroke: 0.3pt + colors.faint,
      inset: 5pt,
      table.header(
        text(font: sans, size: 8pt, weight: "bold")[#upper("Source")],
        text(font: sans, size: 8pt, weight: "bold")[#upper("URL / Identifier")],
        text(font: sans, size: 8pt, weight: "bold")[#upper("Type")],
        text(font: sans, size: 8pt, weight: "bold")[#upper("Tier")],
      ),
      ..data.sources.map(s => (
        text(font: sans, size: 9pt)[#s.name],
        text(font: mono, size: 8pt, fill: colors.muted)[#s.url],
        text(font: mono, size: 8pt)[#s.at("type", default: "—")],
        text(font: mono, size: 8pt)[#s.at("tier", default: "—")],
      )).flatten()
    )
  }

  v(20pt)
  align(center, text(font: mono, size: 7pt, fill: colors.muted)[
    -- END OF BRIEF --
  ])
}

// ============================================================================
// SAMPLE INVOCATION
// Replace this dictionary at render time. All fields are optional except
// `title`. Lists may be empty or omitted; sections will collapse.
// ============================================================================

#let sample-data = (
  classification: "OSINT // UNCLASSIFIED // FOR ANALYTIC USE",
  product_type: "OSINT Council Brief",
  title: "Iran–Israel–US: 24-Hour OSINT Watch",
  subtitle: "Maritime escalation indicators across the Strait of Hormuz",
  originator: "Geopol Forecast Council",
  serial: "GFC-2026-04-19-001",
  date: "19 APR 2026 / 0150Z",
  as_of: "18 APR 2026 / 2250Z",
  aor: "CENTCOM AOR — Persian Gulf, Levant",
  period: "T+24h through T+1w",
  distribution: "Public",
  handling: "None",
  scenario: "Ongoing Iran–Israel–US armed conflict in fragile post-ceasefire limbo. Monitor five OSINT signals over 24h and 1w horizons with collection strategy and false-signal traps.",

  bluf: "Strait of Hormuz remains the dominant escalation axis in the next 24h; Iranian IRGC enforcement posture will determine whether the fragile ceasefire framework survives. Lebanon front is the most likely secondary escalation vector within 1 week.",

  key_judgments: (
    (
      title: "Hormuz closure will be tested within 48 hours",
      confidence: "High",
      body: "The IRGC will conduct at least one further publicly visible interdiction of a commercial vessel, primarily for political signalling rather than sustained closure.",
      rationale: "Pattern matches prior Hormuz crisis cycles (2019, 2024); Ghalibaf rhetoric provides domestic justification cover."
    ),
    (
      title: "Lebanon ceasefire will not survive the week intact",
      confidence: "Moderate",
      body: "Following the UNIFIL peacekeeper killing and IDF strikes, at least one further kinetic exchange exceeding the prior threshold is likely within 7 days.",
      rationale: "Both sides have publicly committed positions; French involvement raises European political costs of restraint."
    ),
    (
      title: "Iranian cyber operations will escalate during diplomatic pause",
      confidence: "Low",
      body: "CyberAv3ngers and IRGC-linked actors may pursue destructive (rather than disruptive) operations against Western critical infrastructure.",
      rationale: "Ceasefire framework contains no cyber provisions; below-threshold actions preserve plausible deniability."
    ),
  ),

  situation: "As of the report timestamp, the conflict is in its fifth week. The Strait of Hormuz was re-closed by Iran on approximately 18 April citing US naval blockade as a ceasefire violation. IRGC gunboats have fired on vessels and ordered an Indian commercial ship to abort transit. A separate Israel–Lebanon track is active but fragile following the killing of an IDF reservist by a Hezbollah IED and a French UNIFIL peacekeeper attributed to Hezbollah by Macron and UNIFIL but denied by the group. US-Iran talks in Pakistan concluded without binding agreement; Egypt and Pakistan are facilitating ongoing channels.",

  key_actors: (
    (name: "Iran (IRGC / Security Council)", position: "Strait remains closed until US lifts blockade and war fully ends; rejects characterization of talks as substantive."),
    (name: "Donald Trump (POTUS)", position: "Naval blockade in full force pending nuclear deal; characterized Iran's re-closure as provocative but talks 'really well'."),
    (name: "Hezbollah", position: "Denies UNIFIL peacekeeper killing; retains southern Lebanon military posture; not concerned by Israel-Lebanon talks."),
    (name: "Emmanuel Macron (France)", position: "Directly attributes UNIFIL killing to Hezbollah; demands accountability."),
  ),

  indicators: (
    (indicator: "IRGC vessel interdictions / 24h", trigger: "≥3 confirmed interdictions in Hormuz corridor", direction: "↑", priority: "Critical"),
    (indicator: "IDF reservist call-up volume", trigger: "Tsav-8 references >2× 7-day baseline on Hebrew Telegram", direction: "↑", priority: "High"),
    (indicator: "Brent crude spot price", trigger: ">+8% intraday move on Hormuz news", direction: "↑", priority: "High"),
    (indicator: "Iranian state media tone re: talks", trigger: "Pivot from 'progress' to 'betrayal' framing in IRNA / Mehr", direction: "↑", priority: "Medium"),
    (indicator: "US carrier strike group movement", trigger: "Second CSG repositioning to CENTCOM AOR", direction: "↑", priority: "High"),
    (indicator: "Hezbollah long-range fire", trigger: "Any munition reaching north of Haifa", direction: "↑", priority: "Critical"),
  ),

  signals: (
    (
      name: "IRGC fast-boat sortie density at Strait of Hormuz",
      class: "maritime",
      horizon: "24h",
      interpretation: "Increased IRGC gunboat sorties, vessel interdictions, or firing incidents indicate Iran enforcing closure more aggressively. Decreased sortie tempo over 48h indicates potential de-escalation or backchannel progress.",
      collection: "AIS data for IRGC-linked vessels (26.0–27.0°N, 56.0–57.0°E). Cross-reference TankerTrackers and geolocated social media.",
      trap: "Routine patrol rotation or weather-driven sorties can mimic enforcement surges. Single high-profile interception may be performative for media rather than sustained posture.",
      sources: ("TankerTrackers (X)", "MarineTraffic AIS", "Lloyd's List", "BBC Monitoring"),
    ),
    (
      name: "IDF reservist call-up chatter on Hebrew Telegram",
      class: "social",
      horizon: "24h",
      interpretation: "Surge in 'tsav 8' (emergency mobilization) references indicates Israel preparing for Lebanon or Iran contingency. Stable chatter indicates current posture maintained.",
      collection: "Keyword frequency monitoring on Hebrew reservist Telegram channels: צו 8, גיוס, חירום, מילואים. Track vs 7-day rolling baseline.",
      trap: "Routine training-cycle call-ups; panic amplification by non-official channels; misattribution of Gaza call-ups to Lebanon front.",
      sources: ("IDF Spokesperson (X)", "Walla", "Ynet", "Haaretz"),
    ),
    (
      name: "Tehran Stock Exchange TEDPIX volume + price spike",
      class: "economic",
      horizon: "1w",
      interpretation: "Volume spike with ±3% index move signals panic selling or coordinated state intervention. Flat low-volume market indicates effective capital controls or wait-and-see posture.",
      collection: "TEDPIX index data at Tehran market close (~12:30Z). Threshold: >30% volume increase over 5-day average AND ±3% move.",
      trap: "Technical glitch; single large block trade in state-owned company distorting index.",
      sources: ("TSE Market Watch", "TradingView TEDPIX", "Bourse & Bazaar"),
    ),
  ),

  alternatives: (
    (label: "Most dangerous course of action", body: "Coordinated Iranian missile/drone salvo on Gulf energy infrastructure during ongoing Hormuz closure, combined with simultaneous Hezbollah long-range fire on Israeli northern infrastructure. Would force US to choose between escalation and visible climbdown."),
    (label: "Most likely course of action", body: "Continued tit-for-tat maritime incidents with no large-scale kinetic escalation; talks in Cairo / Islamabad continue without binding outcome; cyber harassment increases."),
    (label: "Devil's advocate", body: "The 'closure' may be largely rhetorical — actual transit volumes through Hormuz may remain >70% of baseline despite IRGC posturing, making this a managed political theatre rather than genuine escalation."),
  ),

  assumptions: (
    "US naval blockade of Iran-linked shipping continues unchanged through the reporting window.",
    "Egypt and Pakistan retain credibility as mediators with both sides.",
    "Hezbollah leadership succession after recent strikes has not fractured command coherence.",
    "No major terrorist attack inside Israel or US homeland that would force a posture shift.",
  ),

  gaps: (
    "No independent confirmation of Khamenei's reported death on 28 February 2026 outside Sonar grounding.",
    "Limited visibility into IRGC Aerospace Force missile inventories post-strikes.",
    "Unknown status of US-Iran backchannel via Oman.",
    "Hezbollah's domestic missile production rate post-Israeli strikes is contested.",
  ),

  contradictions: (
    "Hormuz ceasefire-violation responsibility: Iran frames US blockade as the violation; US/Israel frame Iran's re-closure as the violation.",
    "UNIFIL peacekeeper killing: Macron and UNIFIL attribute to Hezbollah; Hezbollah denies; no independent forensic confirmation.",
    "Status of US-Iran talks: Egypt/Pakistan describe progress toward final agreement; Iranian officials deny substantive talks underway.",
  ),

  methodology: "OSINT council methodology: Council Head produces SITREP from RSS, Sonar, and Tavily grounding feeds. Five lineage-diverse council member models independently propose priority signals with collection strategy, false-signal traps, and source citations. Head clusters semantically similar signals across members, weights by convergence and source quality, and produces final brief. All sources are open and verifiable.",

  sources: (
    (name: "Times of Israel", url: "timesofisrael.com/feed", type: "news", tier: "free"),
    (name: "Al Jazeera", url: "aljazeera.com/xml/rss/all.xml", type: "news", tier: "free"),
    (name: "BBC World", url: "feeds.bbci.co.uk/news/world/rss.xml", type: "news", tier: "free"),
    (name: "Maariv (Hebrew)", url: "maariv.co.il/rss/rsschadashot", type: "news", tier: "free"),
    (name: "Mehr News (Iran)", url: "en.mehrnews.com/rss", type: "state_media", tier: "free"),
    (name: "US CENTCOM", url: "centcom.mil/RSS/", type: "gov_bulletin", tier: "free"),
    (name: "The War Zone", url: "twz.com/feed", type: "defense_news", tier: "free"),
    (name: "Perplexity Sonar", url: "—", type: "synthesis", tier: "paid"),
    (name: "Tavily", url: "—", type: "search", tier: "paid"),
  ),
)

#intel-brief(data: sample-data)
