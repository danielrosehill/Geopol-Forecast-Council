#set document(title: "Geopol Forecast Council — How will the Iran-Israel-US conflict evolve over the next 24")
#set page(
  paper: "a4",
  margin: (top: 2.6cm, bottom: 2.4cm, left: 2cm, right: 2cm),
  numbering: "1 / 1",
  number-align: center,
  header: context {
    if counter(page).get().first() > 1 {
      set text(size: 8pt, fill: rgb("#6b7280"))
      grid(columns: (1fr, auto),
        [Geopol Forecast Council],
        [18 Apr 2026 20:54 UTC],
      )
      v(-6pt)
      line(length: 100%, stroke: 0.4pt + rgb("#d1d5db"))
    }
  },
)
#set text(font: "IBM Plex Sans", size: 10pt, lang: "en")
#set par(justify: true, leading: 0.6em)
#set heading(numbering: "1.")
#show heading.where(level: 1): h => { v(10pt); block(text(size: 16pt, weight: "bold", h.body)) }
#show heading.where(level: 2): h => { v(6pt); block(text(size: 12pt, weight: "bold", fill: rgb("#374151"), h.body)) }
#show heading.where(level: 3): h => { v(4pt); block(text(size: 10.5pt, weight: "bold", h.body)) }

#let confbar(v, color) = box[
  #box(width: 4cm, height: 8pt, fill: rgb("#e5e7eb"), radius: 1.5pt)[
    #place(left + horizon, box(width: v * 4cm, height: 8pt, fill: color, radius: 1.5pt))
  ]
]

#let mdot(color, code) = box(baseline: 2pt)[
  #box(width: 10pt, height: 10pt, fill: color, radius: 5pt)
  #h(3pt) #text(size: 8.5pt, weight: "bold", code)
]

#let tonedot(color) = box(width: 8pt, height: 8pt, fill: color, radius: 4pt)

#v(2cm)
#align(center)[
  #text(size: 26pt, weight: "bold")[Geopol Forecast Council]
  #v(4pt)
  #text(size: 11pt, fill: rgb("#6b7280"))[Multi-model geopolitical forecast and methodology report]
]
#v(1.2cm)
#block(inset: 14pt, stroke: 0.6pt + rgb("#d1d5db"), radius: 4pt, width: 100%)[
  #text(size: 9pt, fill: rgb("#6b7280"), weight: "bold")[SCENARIO]
  #v(4pt)
  #text(size: 12pt)[How will the Iran-Israel-US conflict evolve over the next 24 hours, 1 week, and 1 month?]
]
#v(10pt)
#grid(columns: (auto, 1fr), column-gutter: 14pt, row-gutter: 6pt,
  text(fill: rgb("#6b7280"))[Run time], [18 Apr 2026 20:54 UTC],
  text(fill: rgb("#6b7280"))[Horizon 24h], [19 Apr 2026 20:54 UTC],
  text(fill: rgb("#6b7280"))[Horizon 1w], [25 Apr 2026 20:54 UTC],
  text(fill: rgb("#6b7280"))[Horizon 1m], [18 May 2026 20:54 UTC],
  text(fill: rgb("#6b7280"))[Council Head], [`anthropic/claude-sonnet-4.6`],
  text(fill: rgb("#6b7280"))[Report Author], [`anthropic/claude-sonnet-4.6`],
  text(fill: rgb("#6b7280"))[Grounding], [rss(ok), sonar(ok), tavily(ok)],
)

#v(14pt)
== Panel roster

#grid(columns: (auto, auto, 1fr), column-gutter: 10pt, row-gutter: 4pt,
  mdot(rgb("#10b981"), "GLM"), text(weight: "bold")[GLM], text(fill: rgb("#6b7280"))[`z-ai/glm-5.1` · overall 0.42],
  mdot(rgb("#1e88a8"), "DSK"), text(weight: "bold")[DeepSeek], text(fill: rgb("#6b7280"))[`deepseek/deepseek-v3.2` · overall 0.45],
  mdot(rgb("#4285f4"), "GEM"), text(weight: "bold")[Gemini], text(fill: rgb("#6b7280"))[`google/gemini-3-flash-preview` · overall 0.52],
  mdot(rgb("#cc785c"), "CLD"), text(weight: "bold")[Claude], text(fill: rgb("#6b7280"))[`anthropic/claude-sonnet-4.6` · overall 0.31],
  mdot(rgb("#8b5cf6"), "KMI"), text(weight: "bold")[Kimi], text(fill: rgb("#6b7280"))[`moonshotai/kimi-k2.5` · overall 0.45],
)

#v(12pt)
This report presents forecasts from a deliberately diverse council of large language models. Each model was briefed on an identical SITREP, asked to produce three concrete predictions per horizon, and scored on its own confidence. The remainder of this document presents their predictions, a comparative analysis of divergence and convergence, and the methodology used.
#pagebreak()
= Executive summary

*24h — by 19 Apr 2026 20:54 UTC.* The Lebanon ceasefire is nominal and deteriorating, Hormuz remains closed with active IRGC harassment, and diplomacy produces only procedural signals — no breakthrough in 24 hours.

*1w — by 25 Apr 2026 20:54 UTC.* The April 22 deadline is the dominant inflection point: most members expect either ceasefire collapse and resumed Israeli operations or a narrow interim deal that defers the nuclear question, with maritime and proxy escalation continuing regardless.

*1m — by 18 May 2026 20:54 UTC.* Over one month, the dominant trajectories are resumed full-scale Israeli operations in Lebanon and sustained Hormuz disruption, with a comprehensive nuclear deal assessed as unlikely but a narrow interim arrangement possible — and US-Israel divergence deepening regardless of outcome.

#pagebreak()
= Comparative analysis

== Member confidence by horizon

Each bar shows the member's *mean confidence across its three predictions* at that horizon. Longer bar = more confident the prediction will hold.


=== 24h


#grid(columns: (auto, auto, auto, auto), column-gutter: 10pt, row-gutter: 5pt,
  mdot(rgb("#cc785c"), "CLD"), text(weight: "bold")[Claude], confbar(0.773, rgb("#cc785c")), text(fill: rgb("#6b7280"))[mean 0.77 · per-pred 0.82 · 0.78 · 0.72],
  mdot(rgb("#4285f4"), "GEM"), text(weight: "bold")[Gemini], confbar(0.633, rgb("#4285f4")), text(fill: rgb("#6b7280"))[mean 0.63 · per-pred 0.65 · 0.55 · 0.70],
  mdot(rgb("#1e88a8"), "DSK"), text(weight: "bold")[DeepSeek], confbar(0.533, rgb("#1e88a8")), text(fill: rgb("#6b7280"))[mean 0.53 · per-pred 0.30 · 0.70 · 0.60],
  mdot(rgb("#8b5cf6"), "KMI"), text(weight: "bold")[Kimi], confbar(0.533, rgb("#8b5cf6")), text(fill: rgb("#6b7280"))[mean 0.53 · per-pred 0.55 · 0.60 · 0.45],
  mdot(rgb("#10b981"), "GLM"), text(weight: "bold")[GLM], confbar(0.483, rgb("#10b981")), text(fill: rgb("#6b7280"))[mean 0.48 · per-pred 0.55 · 0.50 · 0.40],
)

_Spread at 24h: range 0.29, σ 0.10, high 0.77 (Claude), low 0.48 (GLM)._

=== 1w


#grid(columns: (auto, auto, auto, auto), column-gutter: 10pt, row-gutter: 5pt,
  mdot(rgb("#1e88a8"), "DSK"), text(weight: "bold")[DeepSeek], confbar(0.567, rgb("#1e88a8")), text(fill: rgb("#6b7280"))[mean 0.57 · per-pred 0.55 · 0.50 · 0.65],
  mdot(rgb("#4285f4"), "GEM"), text(weight: "bold")[Gemini], confbar(0.517, rgb("#4285f4")), text(fill: rgb("#6b7280"))[mean 0.52 · per-pred 0.45 · 0.60 · 0.50],
  mdot(rgb("#10b981"), "GLM"), text(weight: "bold")[GLM], confbar(0.500, rgb("#10b981")), text(fill: rgb("#6b7280"))[mean 0.50 · per-pred 0.55 · 0.45 · 0.50],
  mdot(rgb("#cc785c"), "CLD"), text(weight: "bold")[Claude], confbar(0.460, rgb("#cc785c")), text(fill: rgb("#6b7280"))[mean 0.46 · per-pred 0.48 · 0.38 · 0.52],
  mdot(rgb("#8b5cf6"), "KMI"), text(weight: "bold")[Kimi], confbar(0.417, rgb("#8b5cf6")), text(fill: rgb("#6b7280"))[mean 0.42 · per-pred 0.50 · 0.40 · 0.35],
)

_Spread at 1w: range 0.15, σ 0.05, high 0.57 (DeepSeek), low 0.42 (Kimi)._

=== 1m


#grid(columns: (auto, auto, auto, auto), column-gutter: 10pt, row-gutter: 5pt,
  mdot(rgb("#cc785c"), "CLD"), text(weight: "bold")[Claude], confbar(0.470, rgb("#cc785c")), text(fill: rgb("#6b7280"))[mean 0.47 · per-pred 0.28 · 0.52 · 0.61],
  mdot(rgb("#1e88a8"), "DSK"), text(weight: "bold")[DeepSeek], confbar(0.450, rgb("#1e88a8")), text(fill: rgb("#6b7280"))[mean 0.45 · per-pred 0.35 · 0.40 · 0.60],
  mdot(rgb("#10b981"), "GLM"), text(weight: "bold")[GLM], confbar(0.433, rgb("#10b981")), text(fill: rgb("#6b7280"))[mean 0.43 · per-pred 0.35 · 0.45 · 0.50],
  mdot(rgb("#4285f4"), "GEM"), text(weight: "bold")[Gemini], confbar(0.433, rgb("#4285f4")), text(fill: rgb("#6b7280"))[mean 0.43 · per-pred 0.40 · 0.55 · 0.35],
  mdot(rgb("#8b5cf6"), "KMI"), text(weight: "bold")[Kimi], confbar(0.300, rgb("#8b5cf6")), text(fill: rgb("#6b7280"))[mean 0.30 · per-pred 0.25 · 0.35 · 0.30],
)

_Spread at 1m: range 0.17, σ 0.06, high 0.47 (Claude), low 0.30 (Kimi)._

#v(10pt)
== Predicted tone by horizon

Each of the 15 predictions per horizon (5 members × 3) is classified by keyword heuristic as *escalatory* (strikes, attacks, enrichment, blockade…), *conciliatory* (ceasefire, talks, framework, de-escalation…), or *mixed* (both or neither). The heuristic is coarse but transparent — see methodology appendix.

#grid(columns: (auto, auto, auto, auto, auto), column-gutter: 10pt, row-gutter: 4pt,
  text(weight: "bold")[Horizon],
  text(weight: "bold")[#tonedot(rgb("#dc2626")) Escalatory],
  text(weight: "bold")[#tonedot(rgb("#059669")) Conciliatory],
  text(weight: "bold")[#tonedot(rgb("#6b7280")) Mixed],
  text(weight: "bold")[Leaning],
  [24h], [3/15], [5/15], [7/15], text(fill: rgb("#059669"), weight: "bold")[conciliatory],
  [1w], [5/15], [7/15], [3/15], text(fill: rgb("#059669"), weight: "bold")[conciliatory],
  [1m], [6/15], [6/15], [3/15], text(fill: rgb("#6b7280"), weight: "bold")[balanced],
)

=== Tone distribution per member

- #mdot(rgb("#10b981"), "GLM") *GLM* — 2 escalatory, 4 conciliatory, 3 mixed (of 9)
- #mdot(rgb("#1e88a8"), "DSK") *DeepSeek* — 6 escalatory, 2 conciliatory, 1 mixed (of 9)
- #mdot(rgb("#4285f4"), "GEM") *Gemini* — 2 escalatory, 4 conciliatory, 3 mixed (of 9)
- #mdot(rgb("#cc785c"), "CLD") *Claude* — 3 escalatory, 3 conciliatory, 3 mixed (of 9)
- #mdot(rgb("#8b5cf6"), "KMI") *Kimi* — 1 escalatory, 5 conciliatory, 3 mixed (of 9)

#v(10pt)
== Divergence and convergence

=== Confidence spread by horizon

#grid(columns: (auto, auto, auto, auto, auto), column-gutter: 10pt, row-gutter: 4pt,
  text(weight: "bold")[Horizon],
  text(weight: "bold")[Low],
  text(weight: "bold")[High],
  text(weight: "bold")[Range],
  text(weight: "bold")[σ],
  [24h], [0.48], [0.77], [0.29], [0.10],
  [1w], [0.42], [0.57], [0.15], [0.05],
  [1m], [0.30], [0.47], [0.17], [0.06],
)

=== Where the council converged

- All four members agree the Lebanon ceasefire is effectively nominal and that additional kinetic incidents are near-certain within 24 hours.
- All members agree Iran will not reopen the Strait of Hormuz within 24 hours and that IRGC harassment of commercial/naval vessels will continue.
- All members agree no comprehensive US-Iran framework agreement will be announced within 24 hours; at best, procedural progress or a next-meeting announcement.
- All members agree the April 22 deadline creates a genuine binary inflection point that will cascade across all three conflict tracks.
- All members agree that a comprehensive nuclear deal within one month is unlikely given the structural gap between US and Iranian positions on enrichment.
- All members agree that US-Israel alignment is under visible strain and that this divergence will deepen as the US pursues a deal Iran that Israel opposes.
- All members agree that the economic shock from the dual blockade creates pressure toward some form of partial maritime de-escalation within a month, even if the nuclear issue remains unresolved.

=== Where the council split

- Whether the April 22 deadline triggers full resumption of Israeli operations or a Trump deadline extension: members are split roughly evenly, with no consensus on which outcome is more likely.
- Whether a limited interim US-Iran agreement (Hormuz-for-blockade-pause swap) is achievable within a week: members range from 0.38 to 0.45 confidence, reflecting genuine uncertainty about Trump's willingness to accept a partial deal.
- Whether Iran will escalate to 60% uranium enrichment within a month if no deal is reached: Council\_Member\_Gemini assigns 0.55, while other members do not explicitly predict this, reflecting disagreement on Iran's nuclear escalation calculus.
- Whether the Strait of Hormuz remains fully disrupted for the entire month (Council\_Member\_Claude, 0.61) versus reopening via mutual de-escalation (Council\_Member\_GLM, 0.35) — a direct disagreement on the maritime outcome.
- Whether Hezbollah is acting independently versus under Iranian direction: members note this as a key uncertainty that materially affects ceasefire viability assessments but do not converge on an answer.
- Whether France will draw down its UNIFIL contingent (Council\_Member\_Kimi, 0.35) — a prediction not raised by other members, reflecting divergent assessments of French strategic calculus.

=== Sharp disagreements


*24h:*
- Council\_Member\_GLM assigns 0.55 confidence to IDF conducting additional Lebanon strikes (framed as a prediction), while Council\_Member\_Claude assigns 0.82 to the broader kinetic incident cluster — reflecting disagreement on how certain continued violence is.
- Council\_Member\_GLM assigns only 0.40 to a commercial vessel being fired upon or detained in Hormuz, while Council\_Member\_Claude assigns 0.78 to continued IRGC harassment — a meaningful gap on the severity and certainty of maritime escalation within 24 hours.
- Council\_Member\_DeepSeek predicts the Lebanon ceasefire 'holds in name' with only two more incidents (confidence 0.30 on a breakthrough), implying relative stability, while Council\_Member\_Claude and Council\_Member\_Kimi assess the ceasefire as effectively collapsed — a framing disagreement on whether the truce retains nominal value.

*1w:*
- Council\_Member\_Claude assigns 0.48 to ceasefire collapse and resumed large-scale Israeli operations, while Council\_Member\_DeepSeek assigns 0.55 and Council\_Member\_Kimi assigns 0.50 — moderate disagreement on probability, but all below 0.55, reflecting genuine uncertainty about whether the April 22 deadline triggers full resumption or a partial deal.
- Council\_Member\_Claude assigns 0.38 to a limited interim US-Iran agreement before/after April 22, while Council\_Member\_Gemini assigns 0.45 and Council\_Member\_Kimi assigns 0.40 — members broadly agree this is possible but below-even probability, with disagreement on whether Trump can politically sell a partial deal.
- Council\_Member\_Gemini predicts Hezbollah formally declares the ceasefire 'null and void' (confidence 0.60), while Council\_Member\_DeepSeek predicts Israel launches a large-scale aerial campaign (confidence 0.55) — these are compatible but reflect different framings of who formally ends the truce first.
- Council\_Member\_Kimi predicts France announces a significant UNIFIL drawdown (confidence 0.35), a prediction not raised by other members, representing a divergent assessment of French strategic calculus.

*1m:*
- Council\_Member\_Claude assigns 0.28 to a formal US-Iran nuclear framework agreement by mid-May, while Council\_Member\_Kimi assigns 0.25 — both very low — but Council\_Member\_Gemini implicitly treats a comprehensive deal as more plausible by assigning 0.55 to Iran resuming 60% enrichment only if no deal is reached, reflecting a different baseline assessment of deal probability.
- Council\_Member\_Claude assigns 0.61 to sustained Hormuz disruption for the entire month, while Council\_Member\_GLM assigns 0.35 to Hormuz reopening with mutual de-escalation — these are not strictly contradictory but reflect meaningfully different assessments of whether economic pressure produces a maritime deal within a month.
- Council\_Member\_Kimi predicts a comprehensive nuclear agreement signed by May 18 (confidence 0.25) and also Israeli ground forces advancing beyond the Litani (confidence 0.35) — these are presented as alternative scenarios, but the combination reflects the widest range of outcomes among any single member.
- Council\_Member\_Gemini predicts a Pakistan-Turkey maritime corridor agreement (confidence 0.35), a specific institutional mechanism not raised by other members, representing a divergent view on the form of any maritime de-escalation.

=== Cross-horizon themes

- The April 22 ceasefire deadline is the single most consequential near-term variable across all horizons: its resolution or non-resolution cascades through Lebanon operations, US-Iran diplomacy, and maritime dynamics simultaneously.
- The Lebanon ceasefire is assessed as nominal across all horizons — the question is not whether it holds but how quickly and visibly it collapses, and whether the collapse is managed or chaotic.
- The dual blockade dynamic (US blockading Iranian shipping, Iran blockading global oil transit) creates unsustainable economic pressure that drives all parties toward some form of partial de-escalation, but the timeline and terms remain deeply contested.
- US-Israel strategic divergence is a persistent theme across all horizons, with the gap between Washington's deal-seeking posture and Netanyahu's confrontational posture widening as the diplomatic track advances.
- Iran's use of asymmetric leverage — Hormuz closure, proxy networks in Europe, nuclear escalation threats — is a consistent pattern across all horizons, with the IRGC maintaining operational assertiveness regardless of diplomatic track status.
- The nuclear enrichment impasse (Trump's zero-enrichment demand vs. Iran's rejection of a 20-year moratorium) is structurally unresolvable in the near term and forces all diplomatic outcomes toward partial or interim arrangements rather than comprehensive deals.
#pagebreak()
= Predictions
== Clustered predictions by horizon

The Report_Author has clustered concrete predictions across members where they were structurally similar. Consensus strength reflects how many members raised a member of each cluster.


=== 24h — by 19 Apr 2026 20:54 UTC

*Headline.* The Lebanon ceasefire is nominal and deteriorating, Hormuz remains closed with active IRGC harassment, and diplomacy produces only procedural signals — no breakthrough in 24 hours.

==== 1. At least one additional kinetic incident occurs in Lebanon (IDF airstrike, Hezbollah device/rocket, or UNIFIL-adjacent violence) within 24 hours, further eroding the nominal ceasefire under invoked self-defense provisions.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#059669"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[STRONG]] #h(6pt) mean confidence *0.70* #h(6pt) raised by: Council\_Member\_GLM, Council\_Member\_DeepSeek, Council\_Member\_Claude, Council\_Member\_Kimi

_Supporting._ The ceasefire is already nominal: an IDF reservist was killed, IDF conducted strikes on Hezbollah operatives, and a French UNIFIL peacekeeper was killed — all within the first 24 hours of the truce. The pattern of tit-for-tat under 'self-defense' provisions creates near-certain continuation of low-level violence. Netanyahu has rejected Hezbollah's terms and Israeli officials confirm preparations for resumed fighting. The 2006 Lebanon ceasefire (UNSCR 1701) saw repeated violations within days, with both sides invoking self-defense clauses.

_Counterveiling._ The November 2024 Lebanon ceasefire held for several weeks despite initial skepticism, suggesting ceasefires can sometimes stabilize faster than initial chaos implies. The November 2023 Gaza pause held for its full 7-day duration because both sides had strong short-term incentives — a dynamic partially absent here but not entirely.

_Watch trigger._ Hezbollah publicly announces withdrawal of forces south of the Litani River, or France deploys additional UNIFIL reinforcements with a credible monitoring mechanism, removing the IDF's stated casus belli.

==== 2. Iran does not reopen the Strait of Hormuz within 24 hours; IRGC gunboats conduct at least one additional harassment, warning-shot, or boarding incident against commercial or naval vessels.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#059669"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[STRONG]] #h(6pt) mean confidence *0.64* #h(6pt) raised by: Council\_Member\_GLM, Council\_Member\_DeepSeek, Council\_Member\_Claude, Council\_Member\_Kimi, Council\_Member\_Gemini

_Supporting._ Iran's National Security Council has explicitly stated it will hold the strait until 'the war fully ends.' Khamenei's warning of 'new bitter defeats' signals an assertive posture. IRGC gunboats already fired on ships on April 18. With no deal imminent and the April 22 deadline still days away, Iran has no incentive to concede Hormuz leverage before extracting concessions. During the 1987–1988 Tanker War, Iran repeatedly harassed shipping even under US naval pressure, using asymmetric harassment as sustained coercive leverage.

_Counterveiling._ In 2019–2020, Iran occasionally de-escalated maritime provocations rapidly when diplomatic back-channels opened. In July 2024, Iran calculated that full closure would alienate key economic partners (China, India) whose oil imports depended on the waterway — the same calculation could restrain the IRGC now. A Gulf state (Oman or Qatar) could broker a temporary maritime de-escalation arrangement.

_Watch trigger._ Pakistan brokers a specific written US commitment to ease the naval blockade on Iranian ports, prompting Iran to announce a 48-hour humanitarian pause on Hormuz harassment as a confidence-building measure.

==== 3. No framework agreement is announced in the next 24 hours; talks continue but produce only a joint statement of 'progress' or procedural commitments (e.g., announcement of a next meeting date) rather than substantive terms.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#0891b2"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[MODERATE]] #h(6pt) mean confidence *0.59* #h(6pt) raised by: Council\_Member\_GLM, Council\_Member\_Claude, Council\_Member\_Kimi

_Supporting._ The core nuclear issue — Trump's demand for zero enrichment versus Iran's rejection of a 20-year moratorium — remains unresolved after 21 hours of Islamabad talks. The gap is structural, not procedural. Pakistan and Egypt are still shuttling rather than convening a final session. A 24-hour window is insufficient to bridge this gap, but both sides have incentive to keep talks alive to avoid being blamed for breakdown before April 22. The 2015 JCPOA negotiations repeatedly produced 'progress' statements and deadline extensions before a final deal.

_Counterveiling._ The 1994 Agreed Framework with North Korea was reached relatively quickly once political will aligned. Before the 2015 JCPOA, mediators repeatedly announced next-round dates as signaling mechanisms to maintain momentum even when substantive gaps remained large. Iran may see Hormuz leverage as more useful than another meeting.

_Watch trigger._ Trump directly calls Khamenei or authorizes a back-channel with a specific enrichment compromise offer (e.g., third-country enrichment), sharply raising the probability of a framework announcement.

==== 4. France, backed by EU members, publicly calls for an emergency UN Security Council meeting to address the killing of the French UNIFIL peacekeeper and the destabilization of southern Lebanon.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#6b7280"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[SINGLE-SOURCE]] #h(6pt) mean confidence *0.60* #h(6pt) raised by: Council\_Member\_DeepSeek

_Supporting._ Macron directly accused Hezbollah of the ambush. The killing of a UN peacekeeper is a significant event that typically triggers a strong diplomatic response from the contributing nation and the UN. France will use this to apply international pressure on Hezbollah and its backers and to assert its diplomatic role in Lebanon.

_Counterveiling._ France may prefer bilateral pressure on Lebanon's government and quiet diplomacy over a UNSC session that could be vetoed or diluted by Russia and China.

_Watch trigger._ Hezbollah formally accepts responsibility for the UNIFIL death and offers accountability measures, reducing Macron's domestic pressure to escalate diplomatically.

==== 5. Oil prices (Brent Crude) rise by at least 2% in the next 24-hour trading cycle.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#6b7280"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[SINGLE-SOURCE]] #h(6pt) mean confidence *0.70* #h(6pt) raised by: Council\_Member\_Gemini

_Supporting._ The reimposition of the Hormuz closure on April 18 and the failure of the 21-hour Islamabad talks to produce an immediate reopening will trigger market anxiety over supply security. The 2019 Abqaiq–Khurais attack caused a 14% spike in oil prices overnight due to Middle East supply fears.

_Counterveiling._ Global recessionary fears or high US inventory data could offset the geopolitical risk premium. Saudi Arabia or the UAE could announce an immediate production increase via pipelines bypassing the Strait.

_Watch trigger._ Saudi Arabia or UAE announces immediate activation of spare production capacity and pipeline rerouting to Yanbu, offsetting the supply constraint.


=== 1w — by 25 Apr 2026 20:54 UTC

*Headline.* The April 22 deadline is the dominant inflection point: most members expect either ceasefire collapse and resumed Israeli operations or a narrow interim deal that defers the nuclear question, with maritime and proxy escalation continuing regardless.

==== 1. The Lebanon ceasefire officially collapses or is formally declared void by at least one party by April 25, with Israel launching large-scale aerial operations against Hezbollah targets in southern Lebanon and Beirut.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#059669"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[STRONG]] #h(6pt) mean confidence *0.54* #h(6pt) raised by: Council\_Member\_GLM, Council\_Member\_DeepSeek, Council\_Member\_Claude, Council\_Member\_Kimi, Council\_Member\_Gemini

_Supporting._ Netanyahu has already rejected Hezbollah's ceasefire terms and Israeli security officials are preparing for resumed fighting. Trump's April 22 ultimatum is explicit and public — backing down without a deal would be a significant credibility loss. The nuclear gap cannot realistically be bridged in 4 days given 21 hours of talks produced nothing. Israel has both political will and operational readiness to resume. The 2006 Lebanon ceasefire held only because both sides were exhausted; in 2014 Gaza, multiple humanitarian ceasefires collapsed within hours when political conditions weren't met.

_Counterveiling._ The November 2024 Lebanon ceasefire held despite similar skepticism. Trump has shown willingness to extend deadlines when talks appear productive (his China trip delay signals sustained diplomatic focus). The April 2024 Iran-Israel escalation cycle produced a ceasefire extended multiple times beyond initial expiry because both parties calculated formal collapse was worse than a nominal truce.

_Watch trigger._ Iran accepts a 'freeze-for-freeze' interim arrangement — pausing enrichment above 20% in exchange for partial US blockade relief — giving Trump enough to declare progress and extend the April 22 deadline.

==== 2. Trump publicly announces an extension of the April 22 deadline or a limited interim US-Iran agreement covering Hormuz reopening and a partial US blockade pause, deferring the nuclear question and allowing Trump to claim a 'win' without a comprehensive deal.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#0891b2"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[MODERATE]] #h(6pt) mean confidence *0.42* #h(6pt) raised by: Council\_Member\_GLM, Council\_Member\_Claude, Council\_Member\_Kimi, Council\_Member\_Gemini

_Supporting._ Trump has a pattern of setting dramatic deadlines and then extending them when the cost of following through exceeds the cost of delay. He characterized talks as 'really well' while threatening escalation — a classic positioning move. The Pakistan/Egypt mediation track provides cover for 'progress' claims. The 2013 Geneva JPOA separated immediate confidence-building measures from the comprehensive nuclear question, buying time for further negotiations. The 2018 Singapore Summit with North Korea announced a high-level framework to forestall immediate conflict despite lack of technical detail.

_Counterveiling._ Trump's 2018 withdrawal from the JCPOA was executed on a hard deadline with no extension, demonstrating that when he calculates domestic political benefits of toughness outweigh diplomatic costs, he follows through. Trump has explicitly stated Iran must never enrich uranium, making a partial agreement politically difficult to sell domestically without appearing to capitulate.

_Watch trigger._ Iran makes a visible, verifiable concession on Strait of Hormuz transit (e.g., allowing a specific flagged convoy through), or Saudi Arabia/UAE publicly endorses a partial deal framework, giving Trump political cover to accept a phased approach.

==== 3. US-Israel diplomatic friction intensifies publicly, with at least one additional senior US official (Secretary of State or equivalent) publicly criticizing an Israeli military or policy decision regarding Syria, Lebanon, or Palestinian issues.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#d97706"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[WEAK]] #h(6pt) mean confidence *0.65* #h(6pt) raised by: Council\_Member\_DeepSeek, Council\_Member\_Gemini

_Supporting._ Tom Barrack's public rebuke of Israeli Syria/Turkey policy was unprecedented and is unlikely to be a one-off. It signals an administration willing to pressure Israel publicly to manage regional relationships and gain leverage for a deal with Iran. The US-Israel rift during the 1982 Lebanon War regarding the siege of Beirut and Sabra and Shatila established a precedent for public US criticism during active Israeli operations.

_Counterveiling._ The White House may walk back Barrack's comments to reaffirm unwavering support for Israel, especially if Netanyahu threatens to act unilaterally in ways that embarrass Washington. The 2014 crisis in US-Israel relations involved deep friction but did not result in a fundamental policy shift during active conflict.

_Watch trigger._ A direct, high-level Trump-Netanyahu phone call resulting in a public display of unity, or a White House walkback of Barrack's comments by the Secretary of State.

==== 4. Iran-linked proxy attacks on European or Gulf targets escalate within the week, including at least one significant incident beyond the London arson attacks targeting Israeli or US diplomatic or commercial interests in a third country.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#6b7280"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[SINGLE-SOURCE]] #h(6pt) mean confidence *0.52* #h(6pt) raised by: Council\_Member\_Claude

_Supporting._ The London arson attacks signal Iran is activating proxy networks in Europe. As military pressure on Iran intensifies and diplomatic talks stall, the IRGC Quds Force historically expands the conflict envelope through proxies to raise costs for adversaries without direct escalation. In 2012, Iran-linked operatives conducted attacks on Israeli targets in Bulgaria, India, Georgia, Thailand, and Azerbaijan simultaneously — a clear pattern of proxy escalation under sanctions pressure.

_Counterveiling._ Iran has sometimes restrained proxy networks during active negotiations to preserve diplomatic goodwill, as seen during portions of the 2013–2015 JCPOA negotiation period. If the UK publicly attributes the London arson attacks to Iran and expels Iranian diplomats, Iran may temporarily halt European proxy operations.

_Watch trigger._ UK publicly attributes the London arson attacks to Iran and expels Iranian diplomats, prompting Iran to temporarily halt European proxy operations to avoid triggering a broader Western coalition response.

==== 5. Brent crude oil closes at least 15% above its April 18 closing price on at least one trading day before April 25.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#6b7280"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[SINGLE-SOURCE]] #h(6pt) mean confidence *0.50* #h(6pt) raised by: Council\_Member\_GLM

_Supporting._ The dual blockade — US blocking Iranian exports, Iran blocking Hormuz transit — is an unprecedented constraint on global oil supply. Roughly 20% of global oil transits Hormuz. If the blockade persists through April 22 without resolution, markets will price in sustained disruption. After the September 2019 Abqaiq-Khurais attack, Brent spiked roughly 15% in a single day despite the disruption being partial and temporary.

_Counterveiling._ In January 2024, despite Houthi attacks disrupting Red Sea shipping for weeks, Brent crude did not spike 15% above pre-crisis levels because markets had substantial spare capacity and strategic reserves. Saudi Arabia activating spare production capacity and routing shipments via the East-West pipeline to Yanbu could moderate the shock.

_Watch trigger._ Saudi Arabia announces activation of significant spare production capacity and pipeline rerouting to Yanbu, offsetting the Hormuz supply constraint.

==== 6. The US announces the formation of a multinational naval task force specifically to escort commercial shipping through the Strait of Hormuz, with several European and Arab states publicly joining.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#6b7280"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[SINGLE-SOURCE]] #h(6pt) mean confidence *0.50* #h(6pt) raised by: Council\_Member\_DeepSeek

_Supporting._ Iran's re-closure of the Strait and firing on ships creates an immediate crisis for global shipping and energy markets. The US has historically responded to such challenges with coalition-building (e.g., Operation Prosperity Guardian for the Red Sea). Trump's 'full force' blockade rhetoric and the global economic stakes make a visible, multilateral military response to secure the waterway highly likely within a week.

_Counterveiling._ The IRGC Navy seizing a commercial vessel flagged to a major US ally could trigger a more unilateral US response rather than coalition-building. European states may resist joining a task force that could be seen as escalatory during active negotiations.

_Watch trigger._ IRGC Navy seizes a commercial vessel flagged to a major US ally (UK, Japan), forcing a more immediate and potentially unilateral US military response rather than coalition formation.


=== 1m — by 18 May 2026 20:54 UTC

*Headline.* Over one month, the dominant trajectories are resumed full-scale Israeli operations in Lebanon and sustained Hormuz disruption, with a comprehensive nuclear deal assessed as unlikely but a narrow interim arrangement possible — and US-Israel divergence deepening regardless of outcome.

==== 1. Full-scale Israeli military operations resume in Lebanon within the month, with IDF ground forces re-entering southern Lebanon and Israeli airstrikes on Hezbollah infrastructure in the Bekaa Valley, while the US-Iran diplomatic track continues in parallel without halting Israeli operations.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#0891b2"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[MODERATE]] #h(6pt) mean confidence *0.46* #h(6pt) raised by: Council\_Member\_Claude, Council\_Member\_Kimi, Council\_Member\_Gemini

_Supporting._ Netanyahu has already rejected ceasefire terms and is preparing for resumed fighting. The ceasefire is nominal and deteriorating. The US-Israel divergence on Syria/Turkey policy suggests Washington may not restrain Israel on Lebanon if a US-Iran deal is in progress. Israel has demonstrated willingness to act unilaterally — in 2006, Israel resumed full-scale operations after initial ceasefire attempts failed; in 2024, Israel expanded Gaza operations despite US pressure for restraint. The death of a Rafael engineer provides domestic political capital for escalation.

_Counterveiling._ US pressure has historically constrained Israeli operations at critical junctures — the 1973 ceasefire, the 1982 Beirut siege halt. If the US explicitly conditions continued military aid or intelligence sharing on Israeli restraint in Lebanon as part of the Iran deal framework, Netanyahu faces a genuine constraint. Pressure from the Trump administration to avoid a 'forever war' that could disrupt global oil markets and the US economy may also restrain Israel.

_Watch trigger._ The US explicitly conditions continued military aid or intelligence sharing on Israeli restraint in Lebanon as part of the Iran deal framework, or Hezbollah voluntarily withdraws heavy weapons north of the Litani River under UN supervision.

==== 2. The Strait of Hormuz remains partially or fully disrupted for the entire month, with global oil prices sustaining above pre-crisis levels and at least one major shipping company announcing permanent rerouting around the Cape of Good Hope, marking a structural shift in global energy logistics.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#d97706"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[WEAK]] #h(6pt) mean confidence *0.48* #h(6pt) raised by: Council\_Member\_Claude, Council\_Member\_GLM

_Supporting._ Iran has explicitly tied Hormuz reopening to 'the war fully ending' — a condition that will not be met within a month given the Lebanon front and nuclear impasse. Even a partial deal is unlikely to fully resolve the maritime dimension. Shipping companies make rerouting decisions based on insurance costs and risk assessments that lag diplomatic developments by weeks. The 2021–2024 Red Sea/Houthi crisis demonstrated that sustained maritime threat environments cause lasting rerouting decisions, with Cape of Good Hope traffic increasing 40%+ even after intermittent de-escalation.

_Counterveiling._ The 1988 Tanker War ended relatively quickly once the US demonstrated naval superiority and Iran calculated the economic cost of continued closure; shipping returned to normal patterns within months. A mutual de-escalation arrangement — Iran reopens Hormuz, US eases blockade to allow some Iranian exports — is the most plausible off-ramp that lets both sides claim victory.

_Watch trigger._ The US Navy conducts a decisive kinetic operation against IRGC naval assets in the strait (sinking or disabling multiple gunboats), degrading Iran's ability to enforce closure and prompting shipping companies to reassess risk.

==== 3. The US-Israel strategic divergence deepens publicly, with the US concluding or advancing a deal with Iran that Israel vocally rejects, leading to Netanyahu authorizing unilateral military actions in Lebanon or Syria that Washington publicly condemns or criticizes.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#d97706"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[WEAK]] #h(6pt) mean confidence *0.53* #h(6pt) raised by: Council\_Member\_DeepSeek, Council\_Member\_GLM

_Supporting._ Tom Barrack's public criticism is a clear signal of an administration willing to pressure Israel to manage regional relationships. Any US-Iran deal will inevitably include provisions Israel opposes (sanctions relief without full nuclear dismantlement, recognition of Iranian regional interests). Netanyahu's 2015 speech to Congress opposing the JCPOA demonstrated his willingness to create a public US-Israel rift over Iran deal terms he considered inadequate. Israeli security officials already express skepticism about Iranian compromise.

_Counterveiling._ The 2020 Abraham Accords showed Netanyahu is capable of subordinating his Iran hawkishness to broader strategic alignment with Washington when he calculates the US relationship is more valuable than any single deal's terms. Trump could offer Netanyahu a major bilateral concession (formal US recognition of Israeli sovereignty in the Golan Heights, or a massive arms package) as compensation for accepting a deal Netanyahu dislikes.

_Watch trigger._ Trump offers Netanyahu a major bilateral concession as compensation for accepting a deal Netanyahu dislikes, or a public joint US-Israel statement affirming unified red lines for Iran's nuclear program and Hezbollah's disarmament.

==== 4. A limited interim US-Iran agreement is reached that reopens the Strait of Hormuz in exchange for partial easing of the US naval blockade and a formal extension of the Lebanon ceasefire, but without resolving the nuclear enrichment issue — allowing both sides to claim a partial win.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#0891b2"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[MODERATE]] #h(6pt) mean confidence *0.33* #h(6pt) raised by: Council\_Member\_GLM, Council\_Member\_DeepSeek, Council\_Member\_Claude

_Supporting._ The economic costs of dual blockades are unsustainable for all parties over a month. Global recession risks generate intense pressure from Gulf states, China, India, and Europe on both Washington and Tehran. Iran needs oil revenue. The US faces domestic political pressure over gas prices. Pakistan-Egypt mediation has institutional momentum. The 2016 Iran sanctions relief under the JCPOA and the 2013 JPOA both provide templates for reciprocal easing. Trump's transactional focus on oil prices and a 'win' before his China trip will drive a pragmatic, partial solution.

_Counterveiling._ The 1980s Tanker War persisted for years despite enormous economic costs, because neither side could find a face-saving formula and domestic hardliners blocked compromise. Trump has explicitly stated Iran must never enrich uranium, making any partial deal that leaves enrichment unresolved politically difficult to sell. A major naval engagement between US and Iranian forces could harden domestic politics in both countries, making mutual de-escalation politically impossible.

_Watch trigger._ A significant de-escalatory statement from Supreme Leader Khamenei directly linking Hormuz reopening to a verifiable, permanent ceasefire in Lebanon, broadcast on Iranian state media, or Saudi Arabia/UAE publicly endorsing a partial deal framework.

==== 5. Iran's government announces or implements a domestic security crackdown with reported arrests of 100+ individuals described as dissidents, opposition figures, or internal opponents, as the regime consolidates after surviving weeks of external conflict.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#6b7280"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[SINGLE-SOURCE]] #h(6pt) mean confidence *0.50* #h(6pt) raised by: Council\_Member\_GLM

_Supporting._ The SITREP explicitly notes Iranians fear a post-war government crackdown and the regime appears entrenched after surviving weeks of conflict. The IRGC's wartime assertiveness strengthens its domestic position. After the 1980–88 Iran-Iraq War, the Iranian regime conducted extensive purges of leftist and opposition groups. After the 2009 Green Movement and 2022 Mahsa Amini protests, the regime arrested thousands once it regained control.

_Counterveiling._ After the 2015 JCPOA, Iran experienced a brief opening with reduced repression as the regime sought to claim the deal as a popular victory — a negotiated end to the current conflict could produce a similar temporary liberalization. A hardline IRGC faction attempting a power challenge against Khamenei could redirect security resources inward against internal rivals rather than civil society.

_Watch trigger._ A hardline faction within the IRGC attempts a coup or power challenge against Khamenei, forcing the regime to redirect security resources inward against internal rivals rather than against civil society.

==== 6. Iran resumes uranium enrichment to 60% or higher if the US naval blockade is not fully lifted by mid-May, using nuclear escalation as leverage to force a new crisis.

#box(inset: (x: 6pt, y: 2pt), fill: rgb("#6b7280"), radius: 2pt)[#text(fill: white, size: 8.5pt, weight: "bold")[SINGLE-SOURCE]] #h(6pt) mean confidence *0.55* #h(6pt) raised by: Council\_Member\_Gemini

_Supporting._ Iran's 'dual blockade' strategy is its only leverage. If the Islamabad talks fail to yield sanctions relief, Iran historically responds by advancing its nuclear clock to force a new crisis. Iran's 2021 move to 60% enrichment following the Natanz sabotage incident established this as a credible escalatory tool.

_Counterveiling._ China could pressure Iran to maintain the status quo to ensure the mid-May summit with Trump is successful. The IAEA reporting a 'breakthrough' in monitoring access could delay the need for enrichment escalation.

_Watch trigger._ IAEA reports a breakthrough in monitoring access that delays the need for enrichment escalation, or China publicly pressures Iran to maintain the nuclear status quo ahead of the Trump-China summit.


#v(10pt)
== Watchlist triggers

Concrete observable events that, if they occur, would meaningfully shift the council's forecasts.

- Hezbollah publicly announces withdrawal of forces south of the Litani River under UN supervision — would remove IDF's stated casus belli for self-defense strikes and potentially stabilize the ceasefire.
- Iran's Supreme Leader issues a statement explicitly ruling out further negotiations before the US lifts its naval blockade — would collapse the diplomatic track entirely.
- Pakistan brokers a specific written US commitment to ease the naval blockade on Iranian ports — would enable Iran to announce a confidence-building maritime pause.
- Trump directly calls Khamenei or authorizes a back-channel with a specific enrichment compromise offer (e.g., third-country enrichment) — would sharply raise probability of a framework announcement.
- Iran accepts a 'freeze-for-freeze' interim arrangement (pausing enrichment above 20% in exchange for partial US blockade relief) — would give Trump enough to declare progress and extend the April 22 deadline.
- Saudi Arabia or UAE publicly endorses a partial deal framework and offers economic incentives to Iran (e.g., oil revenue escrow) — would provide Trump political cover to accept a phased approach.
- A major Hezbollah-linked mass-casualty attack on IDF forces or Israeli cities — would make the ceasefire politically untenable for Netanyahu and eliminate diplomatic space for any agreement.
- A major naval engagement between US and Iranian forces producing significant casualties — would harden domestic politics in both countries and make mutual de-escalation politically impossible.
- The US explicitly conditions continued military aid or intelligence sharing on Israeli restraint in Lebanon as part of the Iran deal framework — would create a genuine constraint on Netanyahu's operational independence.
- Israel conducts a successful airstrike on Iran's Fordow or Natanz enrichment facilities — would reset the entire conflict dynamic and eliminate Iranian incentive to negotiate.
- Iran's economy shows acute signs of collapse (currency crisis, fuel shortages, public unrest) — would soften Khamenei's negotiating position significantly.
- UK publicly attributes the London arson attacks to Iran and expels Iranian diplomats — would either prompt Iranian restraint of European proxy operations or trigger further escalation.
- Saudi Arabia announces activation of significant spare production capacity and pipeline rerouting to Yanbu — would moderate the oil price shock and reduce economic pressure driving both sides toward a deal.
- A direct private warning from the White House to Netanyahu to freeze all regional strikes until the April 22 deadline — would temporarily constrain IDF operations in Syria and Lebanon.

== Calibration note

This forecast operates under extreme uncertainty across all horizons. Several tail risks are low-probability but high-consequence and are not adequately captured in the main predictions: (1) A US airstrike on Iranian nuclear facilities (Fordow, Natanz) — assessed as unlikely within a month but would reset the entire conflict dynamic, potentially triggering Iranian missile strikes on US naval assets and Gulf infrastructure; (2) An Iranian missile or drone strike that sinks or severely damages a US Navy vessel in the Persian Gulf — would trigger a massive US military response and likely end the diplomatic track entirely; (3) Domestic political collapse or a coup attempt within Iran — would change the negotiating calculus entirely and is essentially unforecastable from open-source reporting; (4) A Hezbollah mass-casualty attack on Israeli population centers (Haifa, Tel Aviv) using precision missiles — would eliminate any remaining political space for ceasefire and likely trigger Israeli strikes on Iranian territory. This forecast is NOT a prediction that any comprehensive US-Iran nuclear deal will be reached within a month — the structural gap between Trump's zero-enrichment demand and Iran's position makes this unlikely, and members' confidence scores (0.25–0.28) reflect this. This forecast is also NOT an assessment of the underlying merits of any party's legal or political claims regarding the Hormuz closure, the ceasefire self-defense provisions, or the UNIFIL killing attribution. Confidence scores are deliberately modest throughout, reflecting a genuinely fluid multi-actor crisis with no dominant stabilizing mechanism and several simultaneous flashpoints where a single tactical incident could cascade into strategic escalation.
#pagebreak()
== Per-member predictions


=== #mdot(rgb("#10b981"), "GLM") GLM
_`z-ai/glm-5.1` · lineage Zhipu_
*Overall confidence.* 0.42
_Notes._ This forecast covers an unusually volatile multi-actor scenario with at least three simultaneous flashpoints (Lebanon, Hormuz, nuclear negotiations) and six+ relevant decision-makers. The April 22 deadline creates a genuine binary inflection point that will cascade across all three tracks. My confidence is deliberately modest because: (1) Trump's decision-making is historically unpredictable and may not follow rational-cost models; (2) IRGC operational decisions may not align with Tehran's diplomatic posture; (3) the Hezbollah independence question means even a US-Iran deal may not stabilize Lebanon. The 1-month horizon predictions are particularly uncertain — they represent plausible trajectories, not high-probability outcomes.

==== 24h

*1. IDF announces at least one additional strike on Hezbollah targets in Lebanon before April 19 20:54 UTC, citing self-defense provisions of the ceasefire agreement.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.55*

_Reasoning._ The IDF already struck Hezbollah operatives on April 18 under the self-defense clause, setting a precedent. With an IDF reservist killed and a UNIFIL peacekeeper dead, the security rationale for further strikes is established in Israeli framing. Netanyahu has rejected Hezbollah's terms and officials say preparations for resumed fighting are underway. The ceasefire is already nominal.

_Supporting precedent._ During the 2006 Lebanon War ceasefire (UNSCR 1701), Israel conducted multiple strikes in the days immediately following the truce, citing self-defense against rearming and repositioning.

_Counterveiling precedent._ The November 2023 Gaza pause/ceasefire held for its full 7-day duration with no IDF strikes, because both sides had strong short-term incentives (hostage releases) to maintain it — a dynamic absent here.

_Change factor._ Hezbollah publicly announces it is withdrawing forces south of the Litani River, removing the IDF's stated casus belli for self-defense strikes.

*2. Pakistan's Foreign Ministry issues a public statement announcing a specific date and location for resumed US-Iran negotiations before April 22.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.50*

_Reasoning._ Pakistan is actively shuttling between Tehran and Gulf capitals. Egypt's FM publicly stated they are working toward a 'final agreement,' suggesting mediators want visible momentum. Trump's claim that talks are going 'really well' creates pressure to produce evidence of progress before the April 22 deadline. Announcing a next round is the lowest-cost signal of diplomatic continuity.

_Supporting precedent._ Before the 2015 JCPOA, mediators (Oman, EU) repeatedly announced next-round dates as signaling mechanisms to maintain momentum and demonstrate progress, even when substantive gaps remained large.

_Counterveiling precedent._ The February 2022 US-Russia negotiations collapsed entirely without any announced next round, as diplomatic tracks can simply freeze when one side calculates that talks are not serving its interests — Iran may see Hormuz leverage as more useful than another meeting.

_Change factor._ Iran's Supreme Leader issues a statement explicitly ruling out further negotiations before the US lifts its naval blockade.

*3. At least one commercial vessel transiting the Strait of Hormuz is fired upon, detained, or forcibly diverted by IRGC naval forces.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.40*

_Reasoning._ Iran reimposed Hormuz closure on April 18 and IRGC gunboats already fired on ships that day. The National Security Council stated the strait will remain closed until 'the war fully ends' — a maximalist position. The IRGC has operational control and has demonstrated willingness to use force. With the US blockade in place, Iran has incentive to demonstrate resolve and impose costs on third parties to generate pressure on Washington.

_Supporting precedent._ During the 1980s Tanker War, Iran regularly fired on and seized commercial vessels in the Persian Gulf, including the detention of the MV Sea Isle City in 1987 and multiple ship attacks using Silkworm missiles.

_Counterveiling precedent._ In July 2024, despite IRGC naval activity and threats, Hormuz remained open to commercial traffic because Iran calculated that closure would alienate its key economic partners (China, India) whose oil imports depended on the waterway — the same calculation could restrain the IRGC now.

_Change factor._ A Gulf state (e.g., Oman or Qatar) brokers a temporary maritime de-escalation arrangement allowing limited tanker transit, giving Iran a face-saving mechanism short of full closure enforcement.

==== 1w

*1. The Lebanon ceasefire is not renewed or is formally declared void by at least one party (Israel, Lebanon, or the monitoring mechanism) by April 25.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.55*

_Reasoning._ The 10-day ceasefire expires April 22. Netanyahu has already rejected Hezbollah's terms. Israeli security officials stated preparations for resumed fighting are underway. The IDF has already conducted strikes within the ceasefire period. The IDF reservist death and UNIFIL killing have destroyed the political basis for renewal on the current terms. Trump's April 22 ultimatum — 'the fighting resumes' without a deal — creates a hard deadline that is unlikely to be met given the nuclear enrichment impasse.

_Supporting precedent._ The 2024 Israel-Hezbollah ceasefire (November) held because both parties were exhausted and had US-French enforcement guarantees. By contrast, the 2006 ceasefire nearly collapsed within days and required sustained international pressure to maintain — conditions absent here.

_Counterveiling precedent._ The April 2024 Iran-Israel escalation cycle produced a ceasefire that was extended multiple times beyond its initial expiry despite violations, because both parties calculated that formal collapse was worse than a nominal truce — the same logic could apply if Israel decides a nominal ceasefire serves its repositioning needs.

_Change factor._ The US offers Israel significant military or diplomatic concessions (e.g., on Syria policy or arms shipments) in exchange for Israel agreeing to a ceasefire extension.

*2. Trump publicly announces an extension of the April 22 deadline, citing diplomatic progress, without a comprehensive US-Iran deal being signed.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.45*

_Reasoning._ Trump has a pattern of setting dramatic deadlines and then extending them when the cost of following through exceeds the cost of delay. He characterized talks as going 'really well' while simultaneously threatening escalation — a classic positioning move. His delayed China trip signals sustained focus on this file. An extension lets him claim progress while avoiding the immediate costs of resumed fighting and economic shock from Hormuz closure. The Pakistan-Egypt mediation track provides cover for 'progress' claims.

_Supporting precedent._ Trump repeatedly extended deadlines during North Korea negotiations (2018-2019), including the summit with Kim Jong Un, claiming progress while no substantive denuclearization occurred — the pattern of setting and extending deadlines to maintain leverage is well-established.

_Counterveiling precedent._ Trump's 2018 withdrawal from the JCPOA was executed on a hard deadline with no extension, demonstrating that when he calculates that domestic political benefits of toughness outweigh diplomatic costs, he will follow through on ultimatums.

_Change factor._ Iran makes a visible, verifiable concession on Strait of Hormuz transit (e.g., allowing a specific flagged convoy through), giving Trump enough to claim a 'win' without needing a full deal.

*3. Brent crude oil closes at least 15% above its April 18 closing price on at least one trading day before April 25.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.50*

_Reasoning._ The dual blockade — US blocking Iranian exports, Iran blocking Hormuz transit — is an unprecedented constraint on global oil supply. Roughly 20% of global oil transits Hormuz. Markets have already seen price increases but the full supply shock has a lag. If the blockade persists through April 22 without resolution, the market will price in sustained disruption. Speculative forces amplify during geopolitical supply crises. The SITREP notes global gas prices, food costs, and supply chains are already affected.

_Supporting precedent._ During the 1973 Arab oil embargo, crude prices approximately quadrupled within weeks of the supply restriction. More modestly, after the September 2019 Abqaiq-Khurais attack on Saudi facilities, Brent spiked roughly 15% in a single day despite the disruption being partial and temporary.

_Counterveiling precedent._ In January 2024, despite Houthi attacks disrupting Red Sea shipping for weeks, Brent crude did not spike 15% above pre-crisis levels because markets had substantial spare capacity and strategic reserves, and traders judged the disruption manageable — similar buffers could moderate the Hormuz shock.

_Change factor._ Saudi Arabia announces it is activating significant spare production capacity and routing shipments around Hormuz via the East-West pipeline to Yanbu, offsetting the supply constraint.

==== 1m

*1. Strait of Hormuz reopens to commercial transit with both the US and Iran publicly confirming a mutual de-escalation arrangement that includes partial easing of the US naval blockade.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.35*

_Reasoning._ The economic costs of dual blockade are unsustainable for all parties over a month. Global recession risks generate intense pressure from Gulf states, China, India, and Europe on both Washington and Tehran. Iran needs oil revenue. The US faces domestic political pressure over gas prices. Pakistan-Egypt mediation has institutional momentum. A face-saving mutual de-escalation — Iran reopens Hormuz, US eases blockade to allow some Iranian exports — is the most plausible off-ramp that lets both sides claim victory.

_Supporting precedent._ The 2016 Iran sanctions relief under the JCPOA included mutual de-escalation: Iran constrained nuclear activities, the US lifted oil export sanctions and unfroze assets, and shipping normalized — a template for reciprocal easing exists.

_Counterveiling precedent._ The 1980s Tanker War persisted for years despite enormous economic costs, because neither side could find a face-saving formula for de-escalation and domestic hardliners in both Iran and the US blocked compromise — the same dynamic could lock in the current blockade.

_Change factor._ A major naval engagement between US and Iranian forces produces significant casualties, hardening domestic politics in both countries and making mutual de-escalation politically impossible.

*2. Netanyahu publicly rejects or explicitly criticizes a US-proposed Iran deal framework, creating an open diplomatic rift visible in official Israeli government statements or a direct Netanyahu press appearance.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.45*

_Reasoning._ US-Israel alignment already shows visible strain — Barrack's public rebuke of Israeli Syria/Turkey policy was unprecedented. Any US-Iran deal will inevitably include provisions Israel opposes (e.g., sanctions relief without full nuclear dismantlement, recognition of Iranian regional interests). Netanyahu has built his political brand on confronting Iran and rejecting insufficient deals. Israeli security officials already express skepticism about Iranian compromise. A deal that leaves Iran's nuclear program and regional proxies intact is anathema to Netanyahu's stated positions.

_Supporting precedent._ Netanyahu's 2015 speech to Congress opposing the JCPOA — delivered over the objections of the Obama administration — demonstrated his willingness to create a public US-Israel rift over Iran deal terms he considered inadequate.

_Counterveiling precedent._ The 2020 Abraham Accords showed Netanyahu is capable of subordinating his Iran hawkishness to broader strategic alignment with Washington when he calculates that the US relationship is more valuable than any single deal's terms — he may choose private dissent over public rupture.

_Change factor._ Trump offers Netanyahu a major bilateral concession (e.g., formal US recognition of Israeli sovereignty in the Golan Heights, or a massive arms package) as compensation for accepting a deal Netanyahu dislikes.

*3. Iran's government announces or implements a domestic security crackdown with reported arrests of 100+ individuals described as dissidents, opposition figures, or internal opponents.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.50*

_Reasoning._ The SITREP explicitly notes Iranians fear a post-war government crackdown and the regime appears entrenched after surviving weeks of conflict. The IRGC's wartime assertiveness strengthens its domestic position. Historical pattern: Iranian regimes consolidate after external threats by suppressing internal dissent, framing opponents as traitors or foreign agents. The war has provided surveillance infrastructure and emergency legal powers. Once the external pressure eases, those tools get redirected inward.

_Supporting precedent._ After the 1980-88 Iran-Iraq War, the Iranian regime conducted extensive purges of leftist and opposition groups (Tudeh Party, MEIN), executing thousands. More recently, after the 2009 Green Movement and 2022 Mahsa Amini protests, the regime arrested thousands once it regained control of the streets.

_Counterveiling precedent._ After the 2015 JCPOA, Iran experienced a brief opening with reduced repression as the regime sought to claim the deal as a popular victory — a negotiated end to the current conflict could produce a similar temporary liberalization rather than a crackdown.

_Change factor._ A hardline faction within the IRGC attempts a coup or power challenge against Khamenei, forcing the regime to redirect security resources inward against internal rivals rather than against civil society.

=== #mdot(rgb("#1e88a8"), "DSK") DeepSeek
_`deepseek/deepseek-v3.2` · lineage DeepSeek_
*Overall confidence.* 0.45
_Notes._ The forecast is characterized by high volatility and multiple interdependent flashpoints (Lebanon, Hormuz, diplomacy). Predictions are highly sensitive to the April 22 deadline and the outcome of the US-Iran talks, which remain opaque. The load-bearing uncertainty of whether Hezbollah acts independently is particularly consequential and difficult to assess from available reporting.

==== 24h

*1. The Lebanon ceasefire holds in name but sees at least two more significant kinetic incidents (e.g., rocket fire, IED, airstrike) attributed to either Hezbollah or the IDF, with both sides citing self-defense.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.30*

_Reasoning._ The ceasefire is fragile and already breached. The killing of the IDF reservist and the French peacekeeper creates strong incentives for retaliatory actions. Both sides have forces in close proximity and a history of tit-for-tat strikes. The 'self-defense' provisions will be invoked to justify continued low-level violence, preventing total collapse but making the truce effectively non-existent on the ground.

_Supporting precedent._ The initial 72-hour humanitarian ceasefire in the 2014 Gaza War, which largely held for its brief duration despite deep mistrust, due to intense international pressure.

_Counterveiling precedent._ The collapse of the 2023 Israel-Hamas truce after a single day due to a disputed rocket attack, showing how quickly ceasefires can unravel.

_Change factor._ An official joint statement from the Pakistani and Egyptian foreign ministries announcing a breakthrough and schedule for signing an agreement.

*2. Tensions in the Strait of Hormuz escalate further, with at least one more incident of IRGC gunboats firing warning shots or attempting to board a merchant vessel, and a corresponding increase in US naval patrols and surveillance in the area.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.70*

_Reasoning._ Iran has declared it will hold the Strait until 'the war fully ends,' and the IRGC has already fired on ships. The US maintains its 'full force' blockade. This standoff creates a high likelihood of daily provocative actions as both sides demonstrate resolve and test the other's boundaries, with maritime forces in close contact.

_Supporting precedent._ The 2019 downing of a US drone by Iran, which led to a immediate, sharp spike in tensions and retaliatory threats from the US, defining the next several days of crisis.

_Counterveiling precedent._ The rapid de-escalation following Iran's April 2024 missile and drone attack on Israel, where both sides quickly stepped back from the brink.

_Change factor._ A statement from Iran's National Security Council or Supreme Leader offering a specific, verifiable confidence-building measure (e.g., allowing a neutral observer ship through Hormuz).

*3. France, backed by other European Union members, publicly calls for an emergency UN Security Council meeting to address the killing of the French UNIFIL peacekeeper and the destabilization of southern Lebanon.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.60*

_Reasoning._ President Macron has directly accused Hezbollah. The killing of a UN peacekeeper is a significant event that typically triggers a strong diplomatic response from the contributing nation and the UN. France will use this to apply international pressure on Hezbollah and its backers, and to assert its diplomatic role in Lebanon.

_Supporting precedent._ The immediate, high-profile US and European diplomatic condemnations following the 2020 Beirut port explosion, which focused intense international scrutiny on Lebanon's government.

_Counterveiling precedent._ The muted US diplomatic response to the 2023 Houthi Red Sea attacks in their initial weeks, showing a preference for deliberation over immediate retaliation.

_Change factor._ President Trump tweets an unequivocal ultimatum giving Iran a 12-hour deadline to reopen the Strait or face military action.

==== 1w

*1. The Lebanon ceasefire officially collapses before April 22, with Israel launching a large-scale aerial campaign against Hezbollah targets in southern Lebanon and Beirut, but holding back from a major ground invasion.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.55*

_Reasoning._ The ceasefire is already nominal, with an IDF reservist killed and IDF strikes conducted. Netanyahu has rejected Hezbollah's terms and Israeli officials are preparing to fight. The April 22 deadline set by Trump acts as a trigger, not a barrier, for Israel to resume operations it views as necessary for deterrence, likely beginning with air power.

_Supporting precedent._ The repeated short-term truces during the 2006 Israel-Hezbollah War, which frequently broke down within days but were repeatedly re-established under international pressure.

_Counterveiling precedent._ The rapid collapse of the May 2021 Israel-Hamas ceasefire in its first days due to localized clashes and provocations.

_Change factor._ A direct, high-level communication (e.g., phone call) between Trump and Netanyahu resulting in a public display of unity.

*2. The US announces the formation of a multinational naval task force (beyond the existing blockade) specifically to escort commercial shipping through the Strait of Hormuz, with several European and Arab states publicly joining.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.50*

_Reasoning._ Iran's re-closure of the Strait and firing on ships creates an immediate crisis for global shipping and energy markets. The US has historically responded to such challenges with coalition-building (e.g., Operation Prosperity Guardian for the Red Sea). Trump's 'full force' blockade rhetoric and the global economic stakes make a visible, multilateral military response to secure the waterway highly likely within a week.

_Supporting precedent._ The 2023 Houthi seizures of commercial ships in the Red Sea, which demonstrated the willingness of Iran-aligned actors to escalate maritime coercion and the complexity of military responses.

_Counterveiling precedent._ The 2019 Iranian seizure of the British-flagged Stena Impero, which led to a tense but contained diplomatic crisis and did not spiral into broader conflict.

_Change factor._ The IRGC Navy seizes a commercial vessel flagged to a major US ally (e.g., UK, Japan) in the Strait of Hormuz.

*3. US-Israel diplomatic friction intensifies, evidenced by another senior US official (e.g., Secretary of State) publicly criticizing an Israeli military or policy decision, possibly regarding strikes in Syria or treatment of Palestinian issues linked to the conflict.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.65*

_Reasoning._ Tom Barrack's public rebuke is unlikely to be a one-off. It signals an administration willing to pressure Israel publicly to manage regional relationships (Turkey, Syria) and possibly to gain leverage for a deal with Iran. This tactic will likely continue as the US tries to corral Israeli actions that could derail negotiations.

_Supporting precedent._ The frequent, public disagreements between the US and Israel during the 1982 Lebanon War regarding the siege of Beirut and links to the Sabra and Shatila massacre.

_Counterveiling precedent._ The 2014 crisis in US-Israel relations over Netanyahu's Congress speech, which involved deep personal and political friction but did not result in a fundamental policy shift during active conflict.

_Change factor._ A public walkback of Tom Barrack's comments by the White House or Secretary of State, reaffirming unwavering support for Israel.

==== 1m

*1. The US and Iran reach a limited, interim agreement that reopens the Strait of Hormuz in exchange for a partial easing of the US naval blockade and a formal extension of the Lebanon ceasefire, but without resolving the nuclear enrichment issue.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.35*

_Reasoning._ The economic costs of the dual blockades are unsustainable for all parties, creating a powerful incentive for a narrow deal. Pakistan and Egypt's sustained mediation, combined with Trump's transactional focus on oil prices and a 'win' before his China trip, will drive a pragmatic, partial solution that kicks the nuclear can down the road.

_Supporting precedent._ The 2021 Israel-Hamas ceasefire brokered by Egypt, which, despite subsequent flare-ups, established a durable enough calm to allow for reconstruction and indirect negotiations.

_Counterveiling precedent._ The 2019-2021 'shadow war' period, where tit-for-tat attacks between Iran/Israel persisted despite no major conventional conflict, showing a high tolerance for sustained, low-level hostilities.

_Change factor._ A significant de-escalatory statement from Supreme Leader Khamenei directly linking Hormuz reopening to a verifiable, permanent ceasefire in Lebanon, broadcast on Iranian state media.

*2. The maritime confrontation escalates into a sustained period of tit-for-tat naval engagements in the Persian Gulf, featuring US/Coalition interdiction of IRGC vessels and Iranian missile/ drone attacks on commercial shipping linked to US allies, but stopping short of all-out war.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.40*

_Reasoning._ The re-imposed Hormuz closure and Trump's insistence on maintaining the US blockade create a high-probability environment for miscalculation and collision. Both sides have demonstrated a willingness to use limited force (IRGC gunboats firing, US blockade). The dynamic is reminiscent of the Tanker War, where escalation occurred in phases rather than a single explosion.

_Supporting precedent._ The 1987-88 'Tanker War' during the Iran-Iraq War, where US naval engagements with Iranian forces (Operation Praying Mantis) escalated significantly over months within the confined geography of the Gulf.

_Counterveiling precedent._ The 2020 US assassination of Qasem Soleimani, which was a massive escalation but did not trigger a full-scale US-Iran war, as both sides subsequently calibrated responses to avoid direct conflict.

_Change factor._ An overt, kinetic US military action inside Iran (e.g., airstrike on IRGC naval base) in response to a major maritime incident.

*3. The US-Israel strategic divergence deepens publicly, with the US concluding a deal with Iran that Israel vocally rejects, leading to Netanyahu authorizing unilateral military actions in Lebanon or Syria that Washington condemns.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.60*

_Reasoning._ Tom Barrack's public criticism is a clear signal. Trump's primary focus appears to be a deal with Iran (for economic and legacy reasons), while Netanyahu is committed to fighting Iran and has rejected Hezbollah's terms. This fundamental misalignment, absent a transformative event, will result in the US and Israel pursuing visibly different paths, with Israel acting more independently in its immediate neighborhood.

_Supporting precedent._ The US-Israel rift during the 1991 Madrid Conference and subsequent Oslo process, where public US pressure on Israel regarding settlements and Palestinian negotiations created sustained diplomatic friction.

_Counterveiling precedent._ The 2015 US-Iran nuclear deal (JCPOA), which was concluded over strong Israeli objections, demonstrating Washington's willingness to pursue deals that diverge from Israeli preferences.

_Change factor._ A public, joint US-Israel statement affirming a unified position on red lines for Iran's nuclear program and Hezbollah's disarmament.

=== #mdot(rgb("#4285f4"), "GEM") Gemini
_`google/gemini-3-flash-preview` · lineage Google_
*Overall confidence.* 0.52
_Notes._ The forecast is heavily dependent on the April 22 deadline. Trump's 'deal-maker' persona suggests a preference for a theatrical framework agreement, but the friction on the ground in Lebanon (IDF/UNIFIL deaths) is moving faster than the diplomacy in Islamabad.

==== 24h

*1. The US Navy will conduct a freedom of navigation operation or escort mission near the Strait of Hormuz that results in a non-kinetic standoff or warning shots with IRGC gunboats.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.65*

_Reasoning._ With the Strait closed and Trump calling the move 'cute' while maintaining a blockade, the US must demonstrate it does not recognize Iranian sovereignty over the waterway to prevent a fait accompli before the April 22 deadline.

_Supporting precedent._ Operation Praying Mantis (1988) showed US willingness to use force to keep the Strait open during the Tanker War.

_Counterveiling precedent._ The 2019 seizure of the Stena Impero by Iran where the US and UK opted for diplomatic and secondary sanctions rather than immediate kinetic intervention.

_Change factor._ A public announcement by Pakistan of a breakthrough 'interim maritime protocol' within the next 12 hours.

*2. Israel will conduct at least one targeted airstrike in Syria against IRGC or Hezbollah assets, despite the Lebanon ceasefire.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.55*

_Reasoning._ The SITREP notes Israeli security officials are preparing to resume fighting and the IDF has already struck Lebanon; Syria remains a 'gray zone' where Israel feels less constrained by the Lebanon-specific truce.

_Supporting precedent._ Israel's 'Campaign Between the Wars' (MABAM) which involves frequent strikes in Syria even during periods of relative calm in Lebanon.

_Counterveiling precedent._ The US public rebuke via Tom Barrack regarding Israeli policy in Syria may force a temporary Israeli pause to avoid further alienating the Trump administration.

_Change factor._ A direct private warning from the White House to Netanyahu to freeze all regional strikes until the April 22 deadline.

*3. Oil prices (Brent Crude) will rise by at least 2% in the next 24-hour trading cycle.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.70*

_Reasoning._ The reimposition of the Hormuz closure on April 18 and the failure of the 21-hour Islamabad talks to produce an immediate reopening will trigger market anxiety over supply security.

_Supporting precedent._ The 2019 Abqaiq–Khurais attack which caused a 14% spike in oil prices overnight due to Middle East supply fears.

_Counterveiling precedent._ Global recessionary fears or high US inventory data could offset the geopolitical risk premium.

_Change factor._ Saudi Arabia or the UAE announcing an immediate increase in production to be exported via pipelines bypassing the Strait.

==== 1w

*1. On or before April 22, President Trump will announce a 'framework for a deal' that extends the Lebanon ceasefire by at least 30 days in exchange for a partial lifting of the US naval blockade.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.45*

_Reasoning._ Trump’s 'really well' comment and the Pakistan/Egypt mediation efforts suggest a desire for a 'win.' A temporary extension avoids the 'fighting resumes' threat while keeping pressure on Iran.

_Supporting precedent._ The 2018 Singapore Summit with North Korea where a high-level framework was announced to forestall immediate conflict despite lack of technical detail.

_Counterveiling precedent._ The 2015 JCPOA withdrawal shows Trump's willingness to walk away from deals he deems 'weak' if Iran does not concede on the nuclear moratorium.

_Change factor._ A major Hezbollah-linked mass casualty attack on IDF forces that makes the ceasefire politically untenable for Netanyahu.

*2. Hezbollah will officially declare the Lebanon ceasefire 'null and void' following continued IDF 'self-defense' strikes.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.60*

_Reasoning._ The death of the IDF reservist and the UNIFIL peacekeeper indicates that local commanders are not adhering to the truce; Hezbollah cannot maintain its domestic 'resistance' credibility if it allows IDF strikes to continue without response.

_Supporting precedent._ The collapse of the 2006 ceasefire multiple times before UN Resolution 1701 was fully implemented.

_Counterveiling precedent._ Iran may order Hezbollah to absorb strikes to avoid sabotaging the Islamabad negotiations which seek to lift the US blockade on Iran itself.

_Change factor._ The deployment of Lebanese Armed Forces (LAF) to the border as a buffer, supported by US/French funding.

*3. The US will designate a specific Iranian-linked entity in Europe as a terrorist organization following the London arson attacks.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.50*

_Reasoning._ The SITREP mentions arson attacks in London with 'possible links' to Iran; the US and UK typically coordinate on 'naming and shaming' to increase leverage during negotiations.

_Supporting precedent._ The designation of the IRGC as a Foreign Terrorist Organization (FTO) in 2019.

_Counterveiling precedent._ The UK might resist the designation to keep diplomatic channels open in London for the Islamabad process.

_Change factor._ Evidence emerging that the arson attacks were 'lone wolf' incidents rather than IRGC-directed.

==== 1m

*1. Israel will launch a large-scale ground operation into Southern Lebanon to create a 5-10km 'buffer zone' if the April 22 deadline passes without a permanent Hezbollah withdrawal.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.40*

_Reasoning._ Netanyahu has already rejected the current terms and security officials are preparing; the death of an engineer from Rafael (a key defense asset) provides the domestic political capital for an escalation.

_Supporting precedent._ The 1982 Lebanon War, which began as a limited 'Peace for Galilee' operation to push back PLO forces.

_Counterveiling precedent._ Pressure from the Trump administration to avoid a 'forever war' that could disrupt global oil markets and the US economy.

_Change factor._ Hezbollah voluntarily withdrawing its heavy weapons north of the Litani River.

*2. Iran will resume uranium enrichment to 60% or higher if the US naval blockade is not fully lifted by the mid-May China trip.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.55*

_Reasoning._ Iran’s 'dual blockade' strategy is its only leverage. If the Islamabad talks fail to yield sanctions relief, Iran historically responds by advancing its nuclear clock to force a new crisis.

_Supporting precedent._ Iran's 2021 move to 60% enrichment following the Natanz sabotage incident.

_Counterveiling precedent._ China could pressure Iran to maintain the status quo to ensure the mid-May summit with Trump is successful.

_Change factor._ The IAEA reporting a 'breakthrough' in monitoring access that delays the need for enrichment escalation.

*3. A 'maritime corridor' agreement will be signed, involving Pakistan and Turkey as guarantors for neutral shipping in the Strait of Hormuz.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.35*

_Reasoning._ The SITREP highlights Pakistan's role and Tom Barrack's praise of Turkey; both are 'middle powers' that can provide the face-saving mechanism for both Trump and Khamenei to de-escalate without appearing to retreat.

_Supporting precedent._ The Black Sea Grain Initiative (2022) where Turkey and the UN brokered a corridor between two warring parties (Russia/Ukraine).

_Counterveiling precedent._ Iran’s insistence that it alone controls the Strait as stated by the National Security Council.

_Change factor._ A direct military clash in the Strait that sinks a major vessel, making 'neutral' guarantees impossible.

=== #mdot(rgb("#cc785c"), "CLD") Claude
_`anthropic/claude-sonnet-4.6` · lineage Anthropic_
*Overall confidence.* 0.31
_Notes._ This forecast operates under extreme uncertainty across all horizons. The April 22 deadline is the single most consequential near-term variable and its resolution (or non-resolution) will cascade through all subsequent predictions. The structural gap between Trump's zero-enrichment demand and Iran's position makes a comprehensive deal within a month unlikely, but partial arrangements are possible. The Lebanon ceasefire is assessed as effectively nominal. Key model risks: (1) a surprise back-channel breakthrough that produces a deal faster than anticipated; (2) a major kinetic escalation (US strike on Iranian nuclear facility, or Iranian missile strike on US naval asset) that resets the entire conflict dynamic; (3) domestic political collapse in Iran that changes the negotiating calculus entirely. Confidence scores reflect genuine uncertainty — this is a highly fluid multi-actor crisis with several simultaneous flashpoints and no dominant stabilizing mechanism.

==== 24h

*1. At least one additional kinetic incident in Lebanon (IDF strike, Hezbollah rocket/device, or UNIFIL-adjacent violence) occurs within 24 hours, further eroding the nominal ceasefire before any diplomatic resolution is reached.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.82*

_Reasoning._ The ceasefire is already nominal: an IDF reservist was killed, IDF conducted strikes on Hezbollah operatives, and a French UNIFIL peacekeeper was killed — all within the first 24 hours of the truce. The pattern of tit-for-tat under 'self-defense' provisions creates a near-certain continuation of low-level violence. Neither Hezbollah nor IDF has demonstrated restraint.

_Supporting precedent._ The 2006 Lebanon ceasefire (UNSCR 1701) saw repeated violations within days of its announcement, with both sides invoking self-defense clauses to justify continued operations.

_Counterveiling precedent._ The 2024 Lebanon ceasefire (November 2024) held for several weeks despite initial skepticism, suggesting ceasefires can sometimes stabilize faster than the initial chaos implies.

_Change factor._ If France deploys additional UNIFIL reinforcements or publicly demands a ceasefire monitoring mechanism with teeth, Hezbollah may temporarily reduce provocations to avoid European diplomatic isolation.

*2. Iran does not reopen the Strait of Hormuz within 24 hours; IRGC gunboats conduct at least one additional harassment or warning-shot incident against commercial or naval vessels.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.78*

_Reasoning._ Iran's National Security Council has explicitly stated it will hold the strait until 'the war fully ends.' Khamenei's warning of 'new bitter defeats' signals an assertive posture. With no deal imminent and the April 22 deadline still days away, Iran has no incentive to concede Hormuz leverage before extracting concessions. IRGC operational tempo in the strait has been elevated.

_Supporting precedent._ During the 1987-1988 Tanker War, Iran repeatedly harassed shipping in the Gulf even under US naval pressure (Operation Earnest Will), using asymmetric harassment as sustained coercive leverage.

_Counterveiling precedent._ In 2019-2020, Iran occasionally de-escalated maritime provocations rapidly when diplomatic back-channels opened, suggesting tactical flexibility when talks are live.

_Change factor._ If Pakistan brokers a specific written US commitment to ease the naval blockade on Iranian ports, Iran might announce a 48-hour 'humanitarian pause' on Hormuz harassment as a confidence-building measure.

*3. No framework agreement is announced in the next 24 hours; talks continue but produce only a joint statement of 'progress' or procedural commitments rather than substantive terms.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.72*

_Reasoning._ The core nuclear issue — Trump's demand for zero enrichment versus Iran's rejection of a 20-year moratorium — remains unresolved after 21 hours of Islamabad talks. The gap is structural, not procedural. Pakistan and Egypt are still shuttling rather than convening a final session. A 24-hour window is insufficient to bridge this gap, but both sides have incentive to keep talks alive to avoid being blamed for breakdown before April 22.

_Supporting precedent._ The 2015 JCPOA negotiations repeatedly produced 'progress' statements and deadline extensions (Lausanne, Vienna) before a final deal, with the last 24-48 hours before each deadline producing only procedural advances.

_Counterveiling precedent._ The 1994 Agreed Framework with North Korea was reached relatively quickly once political will aligned, suggesting rapid closure is possible when leaders decide to move.

_Change factor._ If Trump directly calls Khamenei or authorizes a back-channel with a specific enrichment compromise offer (e.g., third-country enrichment), the probability of a framework announcement rises sharply.

==== 1w

*1. The April 22 Lebanon ceasefire deadline passes without a comprehensive US-Iran deal, triggering resumed large-scale Israeli military operations in Lebanon and a formal Israeli declaration that the ceasefire has ended.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.48*

_Reasoning._ Netanyahu has already rejected Hezbollah's ceasefire terms and Israeli security officials are preparing for resumed fighting. Trump's April 22 deadline is explicit and public — backing down without a deal would be a significant credibility loss. The nuclear gap (zero enrichment vs. Iran's position) cannot realistically be bridged in 4 days given 21 hours of talks produced nothing. Israel has both the political will and operational readiness to resume.

_Supporting precedent._ In August 2006, the Lebanon ceasefire held only because both sides were exhausted; in 2014 Gaza, multiple humanitarian ceasefires collapsed within hours when political conditions weren't met, leading to resumed operations.

_Counterveiling precedent._ The November 2024 Lebanon ceasefire held despite similar skepticism, and Trump has shown willingness to extend deadlines when talks appear productive (his China trip delay suggests sustained diplomatic focus).

_Change factor._ If Iran accepts a 'freeze-for-freeze' interim arrangement — pausing enrichment above 20% in exchange for partial US blockade relief — Trump could declare enough progress to extend the April 22 deadline by another week.

*2. A limited interim US-Iran agreement is announced before or shortly after April 22, covering Hormuz reopening and a partial US blockade pause, but explicitly deferring the nuclear question — allowing Trump to claim a win while fighting in Lebanon continues at reduced intensity.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.38*

_Reasoning._ Both Trump and Iranian negotiators have incentive to avoid full resumption of hostilities. Trump's 'really well' characterization and the Pakistan/Egypt shuttle diplomacy suggest a face-saving partial deal is being constructed. The Hormuz-blockade swap is the most tractable element — both sides can claim defensive posture while trading economic relief. The nuclear issue gets 'parked' for a later track.

_Supporting precedent._ The 2013 Geneva interim agreement (JPOA) with Iran separated immediate confidence-building measures (enrichment pause, sanctions relief) from the comprehensive nuclear question, buying time for further negotiations.

_Counterveiling precedent._ Trump has explicitly stated Iran must never enrich uranium and has framed this as a comprehensive deal requirement, making a partial agreement politically difficult for him to sell domestically without appearing to capitulate.

_Change factor._ If Saudi Arabia or UAE publicly endorses a partial deal framework and offers economic incentives to Iran (e.g., oil revenue escrow), it provides Trump political cover to accept a phased approach.

*3. Iran-linked proxy attacks on European or Gulf targets escalate within the week, including at least one significant incident beyond the London arson attacks — likely targeting Israeli or US diplomatic or commercial interests in a third country.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.52*

_Reasoning._ The London arson attacks signal Iran is activating proxy networks in Europe. As military pressure on Iran intensifies and diplomatic talks stall, the IRGC Quds Force historically expands the conflict envelope through proxies to raise costs for adversaries without direct escalation. The week-long window with no deal and continued blockade pressure creates strong incentive for this.

_Supporting precedent._ In 2012, Iran-linked operatives conducted attacks or attempted attacks on Israeli targets in Bulgaria, India, Georgia, Thailand, and Azerbaijan simultaneously — a clear pattern of proxy escalation under sanctions pressure.

_Counterveiling precedent._ Iran has sometimes restrained proxy networks during active negotiations to preserve diplomatic goodwill, as seen during portions of the 2013-2015 JCPOA negotiation period.

_Change factor._ If the UK publicly attributes the London arson attacks to Iran and expels Iranian diplomats, Iran may temporarily halt European proxy operations to avoid triggering a broader Western coalition response.

==== 1m

*1. A formal US-Iran nuclear framework agreement is signed or announced by mid-May, structured around third-country enrichment or a managed enrichment cap, with the Strait of Hormuz fully reopened and US naval blockade lifted — but with Israeli non-participation and continued low-level Lebanon hostilities.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.28*

_Reasoning._ Trump's delayed China trip to mid-May signals the White House has allocated roughly a month to resolve this. Pakistan and Egypt are actively mediating. The economic shock from dual blockades creates pressure on both sides. A deal that allows Trump to claim Iran will 'never have a nuclear weapon' while Iran retains some civilian nuclear capacity is the most likely landing zone. Israel's exclusion from the deal and continued Lebanon friction is the price.

_Supporting precedent._ The 2015 JCPOA was reached after years of negotiations but accelerated sharply in the final weeks when political will aligned; the 2013 JPOA showed interim deals can be structured quickly when the economic pain is acute.

_Counterveiling precedent._ The Trump administration withdrew from the JCPOA in 2018, and Trump's stated position (zero enrichment) is structurally more demanding than the JCPOA's terms, making a deal harder to reach than in 2015.

_Change factor._ If Iran's economy shows acute signs of collapse (currency crisis, fuel shortages, public unrest) within the month, Khamenei's negotiating position softens significantly and a deal becomes more likely on US terms.

*2. Full-scale Israeli military operations resume in Lebanon within the month, with IDF ground forces re-entering southern Lebanon and Israeli airstrikes on Hezbollah infrastructure in the Bekaa Valley — while the US-Iran diplomatic track continues in parallel without halting Israeli operations.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.52*

_Reasoning._ Netanyahu has already rejected ceasefire terms and is preparing for resumed fighting. The ceasefire is nominal and deteriorating. The US-Israel divergence on Syria/Turkey policy suggests Washington may not restrain Israel on Lebanon if a US-Iran deal is in progress. Israel has demonstrated willingness to act unilaterally when it perceives existential threats from Hezbollah.

_Supporting precedent._ In 2006, Israel resumed full-scale operations in Lebanon after initial ceasefire attempts failed; in 2024, Israel expanded operations in Gaza despite US pressure for restraint, demonstrating operational independence.

_Counterveiling precedent._ US pressure has historically constrained Israeli operations at critical junctures — the 1973 ceasefire, the 1982 Beirut siege halt — suggesting Washington can impose limits when strategically motivated.

_Change factor._ If the US explicitly conditions continued military aid or intelligence sharing on Israeli restraint in Lebanon as part of the Iran deal framework, Netanyahu faces a genuine constraint that could prevent full resumption.

*3. The Strait of Hormuz remains partially or fully disrupted for the entire month, with global oil prices sustaining above pre-crisis levels and at least one major shipping company announcing permanent rerouting around the Cape of Good Hope — marking a structural shift in global energy logistics.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.61*

_Reasoning._ Iran has explicitly tied Hormuz reopening to 'the war fully ending' — a condition that will not be met within a month given the Lebanon front and nuclear impasse. Even a partial deal is unlikely to fully resolve the maritime dimension. Shipping companies make rerouting decisions based on insurance costs and risk assessments that lag diplomatic developments by weeks. The economic shock is already propagating.

_Supporting precedent._ The 2021-2024 Red Sea/Houthi crisis demonstrated that sustained maritime threat environments cause lasting rerouting decisions by commercial shipping, with Cape of Good Hope traffic increasing 40%+ even after intermittent de-escalation.

_Counterveiling precedent._ The 1988 Tanker War ended relatively quickly once the US demonstrated naval superiority and Iran calculated the economic cost of continued closure; shipping returned to normal patterns within months.

_Change factor._ If the US Navy conducts a decisive kinetic operation against IRGC naval assets in the strait (sinking or disabling multiple gunboats), Iran's ability to enforce closure degrades rapidly and shipping companies reassess risk.

=== #mdot(rgb("#8b5cf6"), "KMI") Kimi
_`moonshotai/kimi-k2.5` · lineage Moonshot_
*Overall confidence.* 0.45
_Notes._ Forecasting is complicated by opacity regarding the Hezbollah-Iran command relationship and the potential for rapid, non-linear policy shifts by the Trump administration. The April 22 deadline creates a binary branching point that makes medium-term predictions particularly uncertain.

==== 24h

*1. Pakistan's Foreign Minister announces that US and Iranian negotiators will meet for a third round of talks in Islamabad on April 20 or 21, 2026, before the April 22 deadline.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.55*

_Reasoning._ Pakistani officials are actively shuttling between Tehran and Gulf capitals, and Egypt's Foreign Minister explicitly stated Cairo and Islamabad are working toward a 'final agreement.' Both Washington and Tehran need to signal diplomatic momentum to avoid the 'fighting resumes' scenario Trump threatened for April 22.

_Supporting precedent._ 2015 JCPOA negotiations where Omani and other mediators facilitated last-minute US-Iran ministerial meetings in Lausanne hours before self-imposed deadlines to prevent diplomatic collapse.

_Counterveiling precedent._ January 2020 aftermath of the Soleimani strike, where diplomatic channels between US and Iran froze completely for three weeks despite Qatari and Omani mediation efforts to de-escalate.

_Change factor._ Trump tweets explicit cancellation of all talks or threatens immediate military strikes on Iranian nuclear facilities if Hormuz is not reopened unilaterally within 24 hours.

*2. The Israel Defense Forces confirm conducting at least one additional airstrike in Lebanon targeting Hezbollah infrastructure, citing self-defense provisions of the April 17 ceasefire agreement.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.60*

_Reasoning._ The IDF already conducted strikes on April 18 (the first day of the ceasefire) following the death of reservist Barak Kalfon. Netanyahu has rejected Hezbollah's terms and Israeli security officials confirm preparations for resumed fighting are underway, suggesting continued low-intensity operations are likely.

_Supporting precedent._ August 2006 Lebanon War ceasefire (UNSCR 1701) where both Israel and Hezbollah conducted dozens of 'defensive' strikes in the first 48 hours of the nominal truce, each claiming self-defense exceptions.

_Counterveiling precedent._ November 2024 Gaza ceasefire where the IDF largely refrained from airstrikes for 42 days despite Hamas provocations and tunnel operations, prioritizing diplomatic momentum and hostage release.

_Change factor._ Netanyahu issues a public order to the IDF Chief of Staff to halt all offensive operations in Lebanon to facilitate the Pakistan-mediated negotiations.

*3. US Central Command confirms at least one incident of warning shots fired by US Navy vessels at IRGC gunboats, or reports IRGC forces boarding an additional commercial vessel, in the Strait of Hormuz.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.45*

_Reasoning._ Iran reimposed Hormuz closure on April 18 and IRGC gunboats have already fired on ships. The dual blockade dynamic (US blockading Iran, Iran blockading global traffic) creates high-density naval proximity where tactical encounters escalate rapidly, especially with Khamenei's 'new bitter defeats' rhetoric.

_Supporting precedent._ April 2020 incident where US Navy vessels fired warning shots at IRGC gunboats conducting 'dangerous and harassing approaches' near Kuwaiti territorial waters during heightened tensions.

_Counterveiling precedent._ 1987-1988 Tanker War phase where despite hundreds of attacks on commercial shipping, the US and Iran avoided direct naval gunfire exchanges for 14 months until Operation Praying Mantis.

_Change factor._ Iran unilaterally announces reopening of Hormuz to all commercial traffic except Israeli-flagged vessels, reducing naval confrontation risk.

==== 1w

*1. By April 25, 2026, Israel has formally announced the launch of a major ground military operation in Lebanon (involving division-level deployment) following the expiration of the April 22 ceasefire deadline without a US-Iran comprehensive agreement.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.50*

_Reasoning._ Trump explicitly linked the April 22 deadline to resumed fighting. Netanyahu has rejected Hezbollah's ceasefire terms, and Israeli security officials state preparations to resume fighting are underway. The April 18 incidents (IDF reservist killed, UNIFIL peacekeeper dead) suggest the ceasefire is already operationally collapsed.

_Supporting precedent._ July 2006 Lebanon War where Israel launched 'Operation Change of Direction' (ground invasion) 48 hours after a 48-hour ceasefire attempt collapsed due to continued rocket fire and cross-border raids.

_Counterveiling precedent._ November 2013 Geneva Interim Agreement on Iran's nuclear program where parties negotiated past multiple 'final' deadlines over six months without military escalation, despite Israeli threats to act unilaterally.

_Change factor._ Iran accepts a 20-year moratorium on uranium enrichment above 3.67% and agrees to Hormuz reopening by April 22, satisfying Trump's stated conditions for extending the deadline.

*2. The United States and Iran sign an interim framework agreement by April 25 that extends the Lebanon ceasefire for 30 days and establishes a phased Hormuz reopening in exchange for partial US sanctions relief (specifically on oil exports), while deferring comprehensive nuclear restrictions to future negotiations.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.40*

_Reasoning._ Both sides face economic pressure from the dual blockade (global oil prices spiking, Iranian economy collapsing). Pakistan and Egypt are actively mediating. Trump wants a deal for domestic political purposes but comprehensive nuclear terms take months to negotiate; an interim deal provides face-saving off-ramp from the April 22 cliff.

_Supporting precedent._ November 2013 Joint Plan of Action (JPOA) where Iran and P5+1 agreed to limited constraints and partial sanctions relief for six months while negotiating the comprehensive JCPOA, preventing war during the interim.

_Counterveiling precedent._ May 2021 Gaza conflict where a proposed 30-day ceasefire extension collapsed after 48 hours because core issues (prisoner exchange, reconstruction funding) could not be sequenced separately from immediate violence cessation.

_Change factor._ Hezbollah conducts a mass-casualty rocket attack on Haifa or Tel Aviv before April 22, eliminating diplomatic space for any agreement and forcing Israeli military response.

*3. France announces the withdrawal or significant drawdown (greater than 200 personnel) of its UNIFIL contingent by April 25, citing security concerns following the April 18 killing of a French peacekeeper.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.35*

_Reasoning._ Macron directly accused Hezbollah of the ambush, creating domestic political pressure in France to avoid further casualties. UNIFIL's mandate is already compromised by the active conflict, and France has historically been sensitive to peacekeeping casualties in Lebanon (1983 precedent).

_Supporting precedent._ February 1984 when France withdrew its Multinational Force contingent from Lebanon four months after the 1983 Beirut barracks bombing killed 58 French paratroopers, despite UN mandate remaining active.

_Counterveiling precedent._ France's continued participation in Operation Barkhane in Mali from 2013-2022 despite 53 French soldiers killed over nine years, showing willingness to sustain casualties for strategic interests.

_Change factor._ Hezbollah formally accepts responsibility for the UNIFIL death, apologizes to France, and offers compensation to the peacekeeper's family, satisfying Macron's demand for accountability.

==== 1m

*1. A comprehensive nuclear agreement is signed between the US and Iran by May 18, 2026, including a 20-year uranium enrichment moratorium, full Hormuz reopening, and US commitment to lift oil sanctions, with the Lebanon ceasefire converted to a permanent truce under international monitoring.* #h(4pt) #tonedot(rgb("#059669")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[conciliatory] #h(6pt) conf *0.25*

_Reasoning._ Trump delayed his China trip to mid-May, signaling sustained focus. Iran needs economic relief from the blockade; the US wants to avoid a two-front war (Lebanon and Hormuz) while focusing on China. Pakistan's mediation has established trust, and the April 22 deadline creates forcing function for comprehensive terms.

_Supporting precedent._ July 2015 JCPOA finalization after 20 months of negotiations, where intense deadline pressure (originally July 2014) forced compromises on enrichment limits and sanctions relief timelines.

_Counterveiling precedent._ 2003-2005 EU3 (UK/France/Germany) negotiations with Iran which failed to produce a comprehensive deal despite multiple rounds and temporary suspension agreements, due to irreconcilable differences on enrichment rights.

_Change factor._ Israel conducts a successful airstrike on Iran's Fordow or Natanz enrichment facilities between April 22-May 1, destroying critical infrastructure and eliminating Iranian incentive to negotiate while under attack.

*2. Israeli ground forces have advanced to or established positions beyond the Litani River in southern Lebanon in a sustained military operation lasting more than 14 days, with the Strait of Hormuz remaining closed to commercial traffic and Brent crude oil prices trading above \$120/barrel.* #h(4pt) #tonedot(rgb("#6b7280")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[mixed] #h(6pt) conf *0.35*

_Reasoning._ If the April 22 deadline passes without a deal, Netanyahu's stated goal is to enforce UNSCR 1701 (pushing Hezbollah north of the Litani). The IDF has prepared for resumed fighting. Iran will likely keep Hormuz closed as leverage during active Israeli operations against its proxy.

_Supporting precedent._ June 1982 'Operation Peace for Galilee' where Israeli forces advanced to the outskirts of Beirut within one week, and the 2006 war where IDF reached the Litani within 34 days despite fierce resistance.

_Counterveiling precedent._ 2023-2024 Gaza war (Operation Iron Swords) where Israeli forces struggled for months to clear Hamas from dense urban terrain, suggesting similar difficulties in Hezbollah's fortified southern Lebanon strongholds might prevent rapid Litani advance.

_Change factor._ Hezbollah agrees to withdraw all military forces north of the Litani River under UN supervision and allows Lebanese Army deployment to the border, obviating the need for Israeli ground advance.

*3. Iranian-backed militias (Kataib Hezbollah or Harakat Hezbollah al-Nujaba) conduct a coordinated attack on a US military facility in Syria (specifically Al-Tanf garrison or Conoco gas field) resulting in at least one confirmed US service member fatality by May 18.* #h(4pt) #tonedot(rgb("#dc2626")) #h(2pt) #text(size: 8.5pt, fill: rgb("#6b7280"))[escalatory] #h(6pt) conf *0.30*

_Reasoning._ Iran has used Iraqi proxies to attack US forces before when unable to strike directly. The London arson attacks (April 18) suggest Iranian willingness to expand geographic scope. Syria offers a pressure point where Iran can hurt the US without triggering direct homeland strikes. US criticism of Israeli Syria policy (Barrack statement) may signal reduced US resolve, inviting testing.

_Supporting precedent._ March 2020 Camp Taji attack where Kataib Hezbollah rocket strike killed two US and one UK service member; January 2024 Tower 22 attack in Jordan killing three US soldiers.

_Counterveiling precedent._ June 2019 Gulf of Oman tanker attacks where Iran deliberately avoided targeting US Navy personnel or vessels, limiting attacks to commercial shipping to avoid triggering Article 5 or massive US retaliation.

_Change factor._ US Central Command publicly announces that any attack on US personnel by Iranian proxies will be treated as an attack by Iran itself, with pre-authorized retaliatory strikes on IRGC bases in Iran.
#pagebreak()
= SITREP & grounding
== SITREP

As of April 18, 2026, the Iran-Israel-US conflict is in a volatile, multi-track phase characterized by a fragile land ceasefire in Lebanon, an active maritime confrontation in the Strait of Hormuz, and ongoing but inconclusive diplomatic negotiations mediated by Pakistan. The situation has deteriorated sharply from the ceasefire optimism of April 17 and now presents multiple simultaneous flashpoints.

On the diplomatic track, US-Iran negotiations brokered by Pakistan remain the central mechanism for de-escalation. Vice President JD Vance led a US delegation through 21 hours of talks in Islamabad without reaching agreement. Pakistani officials have since been shuttling between Tehran and Gulf capitals. Egypt's Foreign Minister stated on April 18 that Cairo and Islamabad are working toward a 'final agreement.' President Trump publicly characterized talks as going 'really well' on April 18, but simultaneously warned that without a deal before April 22, 'the fighting resumes.' The April 22 deadline — when the 10-day Lebanon ceasefire expires — is now the single most consequential near-term decision point. Trump's delayed China trip to mid-May signals sustained White House focus on this file.

On the maritime track, Iran reimposed closure of the Strait of Hormuz on April 18 after accusing the US of violating a prior agreement to reopen the waterway. IRGC gunboats have fired on ships in the strait. Iran's National Security Council stated it will hold the strait until 'the war fully ends.' Trump responded by calling Iran's move 'a little cute' while insisting the US naval blockade of Iranian ports and coastal areas remains 'in full force' until Iran reaches a comprehensive deal including on its nuclear program. This dual blockade dynamic — US blockading Iranian shipping, Iran blockading global oil transit — is generating significant economic shock, with global gas prices, food costs, and supply chains all affected. Iran's Supreme Leader Mojtaba Khamenei issued a warning on April 18 that the Iranian navy was ready to inflict 'new bitter defeats' on the US and Israel.

On the Lebanon front, the 10-day ceasefire that began April 17 is already under severe stress. On April 18, an IDF reservist — Barak Kalfon, 48, an engineer at defense firm Rafael — was killed by a Hezbollah explosive device in Lebanon; three other troops were wounded. The IDF confirmed it conducted strikes on Hezbollah operatives in Lebanon on April 18, described as the first strikes since the ceasefire began, citing self-defense provisions in the truce agreement. Separately, a French UNIFIL peacekeeper was killed in southern Lebanon on April 18 in an incident France and UNIFIL attributed to Hezbollah, which denied involvement. President Macron directly accused Hezbollah of the ambush. Lebanon's president vowed to prosecute those responsible. These incidents collectively suggest the ceasefire is nominal rather than operational.

US-Israel alignment shows visible strain. US envoy Tom Barrack publicly argued on April 18 that Israeli policy toward Syria and Turkey is 'strategically counter-productive,' praising Turkey's role in Gaza and Syrian restraint in the face of IDF incursions. This represents an unusual public rebuke and signals Washington is managing competing regional relationships that do not fully align with Israeli preferences. Netanyahu has rejected Hezbollah's ceasefire terms and Israeli security officials have stated preparations to resume fighting are underway even before the two-week period expires.

Iran's domestic situation is also relevant context. Reporting from April 18 indicates Iranians fear a post-war government crackdown, with the regime appearing entrenched after surviving weeks of conflict. The IRGC's assertive maritime posture may reflect internal political dynamics as much as strategic calculation.

In London, a string of arson attacks on Jewish and Israeli-linked buildings — with possible links to Iran-backed actors — was reported on April 18, suggesting Iranian proxy activity extending into European territory.

Sources broadly agree on the core facts but diverge on framing: US and Israeli sources emphasize Iranian aggression and proxy threats; Iranian sources stress defensive posture and US violations of prior agreements; independent economic analysts highlight the blockade's global market destabilization. The characterization of Hezbollah as an independent actor versus an Iranian instrument varies and materially affects ceasefire viability assessments.

=== Key actors

- *Donald Trump (US President)* — Maintains naval blockade of Iran; says talks going 'really well' but warns fighting resumes if no deal by April 22; will not allow Iran to 'blackmail' the US over Hormuz.
- *Mojtaba Khamenei (Iran Supreme Leader)* — Warns of 'new bitter defeats' for US and Israel; IRGC will hold Hormuz until the war fully ends.
- *Benjamin Netanyahu (Israeli PM)* — Rejected Hezbollah ceasefire terms; committed to fighting Iran; preparations for resumed fighting underway.
- *Hezbollah* — Denies responsibility for UNIFIL killing and IDF reservist death; official says group 'not concerned' by Israel-Lebanon talks.
- *Pakistan (mediator)* — Actively shuttling between Tehran and Gulf states to broker renewed US-Iran talks; limited but active leverage.
- *Egypt (mediator)* — FM says Cairo and Islamabad working toward a 'final agreement' between Iran and US.
- *Emmanuel Macron (French President)* — Directly blames Hezbollah for killing of French UNIFIL peacekeeper; demands accountability.
- *Tom Barrack (US envoy)* — Argues Israeli policy on Syria and Turkey is counter-productive; praises Turkish and Syrian restraint.

=== Load-bearing uncertainties

- Whether US-Iran negotiations produce a framework agreement before the April 22 ceasefire expiry deadline, which Trump has explicitly linked to resumed fighting.
- Whether Iran will reopen the Strait of Hormuz as part of a negotiated arrangement or maintain closure as coercive leverage, and whether the US will ease its naval blockade in response.
- Whether the Lebanon ceasefire will hold or collapse given the April 18 IDF strikes, IDF reservist death, and UNIFIL killing — all occurring within 24 hours of the truce beginning.
- The scope and terms of any nuclear deal: Trump has stated Iran must never enrich uranium; Iran has rejected a proposed 20-year moratorium, leaving the core issue unresolved.
- The degree to which Hezbollah is acting independently versus under Iranian direction, which determines whether a US-Iran deal can actually constrain the Lebanon front.
- Whether US-Israel alignment holds or fractures further, given public US criticism of Israeli Syria/Turkey policy and potential divergence on acceptable deal terms with Iran.

=== Reporting contradictions flagged in grounding

- Iran's reimposition of Hormuz closure: Times of Israel frames it as Iranian aggression violating a prior deal; Iranian sources frame it as a response to continued US blockade violations — the sequence of who violated what first is disputed.
- Hezbollah's role in the UNIFIL killing: France and UNIFIL attribute it to Hezbollah; Hezbollah denies any connection — no independent verification available.
- Trump's characterization of talks as 'really well' versus Israeli security officials stating there is 'little belief Iran will compromise' and preparations for resumed fighting are underway — these assessments are in direct tension.
- The nature of the ceasefire's self-defense provisions: IDF says its April 18 strikes on Hezbollah operatives are permitted under the deal; Hezbollah's position on whether those strikes constitute a ceasefire violation is not clearly reported.
#pagebreak()
== Grounding appendix


=== Source: `rss`

*IDF reservist killed by Hezbollah explosive in Lebanon amid truce, 3 troops hurt*  _(The Times of Israel — Sat, 18 Apr 2026 20:24:25 +0000)_
#link("https://www.timesofisrael.com/idf-reservist-killed-by-hezbollah-explosive-in-lebanon-amid-truce-3-troops-hurt/")

*Will Keir Starmer resign?*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 19:58:02 +0000)_
#link("https://www.aljazeera.com/video/inside-story/2026/4/18/will-keir-starmer-resign?traffic_source=rss")

*Pope Leo XIV downplays feud with Trump: ‘Not in my interest’ to debate him*  _(The Times of Israel — Sat, 18 Apr 2026 19:31:14 +0000)_
#link("https://www.timesofisrael.com/pope-leo-xiv-downplays-feud-with-trump-not-in-my-interest-to-debate-him/")

*US envoy argues Israeli policy on Syria and Turkey strategically counter-productive*  _(The Times of Israel — Sat, 18 Apr 2026 19:31:11 +0000)_
#link("https://www.timesofisrael.com/us-envoy-argues-israeli-policy-on-syria-and-turkey-strategically-counter-productive/")

*Mazzucato on the Iran war’s economic shock: Who pays the price?*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 19:29:42 +0000)_
#link("https://www.aljazeera.com/video/upfront/2026/4/18/mazzucato-on-the-iran-wars-economic-shock-who-pays-the-price?traffic_source=rss")

*Building of Trump's White House ballroom can resume in full, appeals court says*  _(BBC News — Sat, 18 Apr 2026 19:18:40 GMT)_
#link("https://www.bbc.com/news/articles/clyx9xyy0j9o?at_medium=RSS&at_campaign=rss")

*Mexico arrests suspected Hungarian drug trafficker amid crime crackdown*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 19:05:04 +0000)_
#link("https://www.aljazeera.com/news/2026/4/18/mexico-arrests-suspected-hungarian-drug-trafficker-amid-crime-crackdown?traffic_source=rss")

*Mexico's Sheinbaum denies 'diplomatic crisis' with Spain after conquest row*  _(BBC News — Sat, 18 Apr 2026 18:58:26 GMT)_
#link("https://www.bbc.com/news/articles/cp86r29l45go?at_medium=RSS&at_campaign=rss")

*Sudanese refugees trapped between borders and bureaucracy in Morocco*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 18:51:05 +0000)_
#link("https://www.aljazeera.com/features/longform/2026/4/18/sudanese-refugees-trapped-between-borders-and-bureaucracy-in-morocco?traffic_source=rss")

*Orbán's era was over in a flash and Hungary's next PM is a man in a hurry*  _(BBC News — Sat, 18 Apr 2026 18:21:19 GMT)_
#link("https://www.bbc.com/news/articles/c4g40npz37lo?at_medium=RSS&at_campaign=rss")

*At least six killed in Kyiv as gunman opens fire and takes hostages*  _(BBC News — Sat, 18 Apr 2026 18:09:57 GMT)_
#link("https://www.bbc.com/news/articles/cm25r1vkx4lo?at_medium=RSS&at_campaign=rss")

*Trump: Iran ‘got a little cute’ by blocking Hormuz again, but talks going ‘really well’*  _(The Times of Israel — Sat, 18 Apr 2026 18:05:01 +0000)_
#link("https://www.timesofisrael.com/trump-iran-got-a-little-cute-by-blocking-hormuz-again-but-talks-going-really-well/")

*Ukraine police shoot dead gunman who killed six in Kyiv, took hostages*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 18:02:18 +0000)_
#link("https://www.aljazeera.com/news/2026/4/18/ukraine-police-shoot-dead-gunman-who-killed-six-in-kyiv-took-hostages?traffic_source=rss")

*‘Test tube orgy’: Israeli scientists use yeast to assess humans’ mating preferences*  _(The Times of Israel — Sat, 18 Apr 2026 17:54:32 +0000)_
#link("https://www.timesofisrael.com/test-tube-orgy-israeli-scientists-use-yeast-to-assess-humans-mating-preferences/")

*Trump joined by Joe Rogan as he signs order to speed up psychedelic review*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 17:46:57 +0000)_
#link("https://www.aljazeera.com/news/2026/4/18/trump-joined-by-joe-rogan-as-he-signs-order-to-speed-up-psychedelic-review?traffic_source=rss")

*HiPP recalls jarred baby food in Austria over contamination fears*  _(BBC News — Sat, 18 Apr 2026 16:54:22 GMT)_
#link("https://www.bbc.com/news/articles/c4gly4qkx1go?at_medium=RSS&at_campaign=rss")

*Pope says 'tyrants' speech was not aimed at Trump*  _(BBC News — Sat, 18 Apr 2026 16:44:39 GMT)_
#link("https://www.bbc.com/news/articles/ce84j261kj1o?at_medium=RSS&at_campaign=rss")

*London police probe arson attack on building tied to Jewish organization*  _(The Times of Israel — Sat, 18 Apr 2026 16:29:48 +0000)_
#link("https://www.timesofisrael.com/uk-police-probe-arson-attack-on-london-building-tied-to-jewish-organization/")

*Harsh Israel critic Analilia Mejía wins US House seat in New Jersey special election*  _(The Times of Israel — Sat, 18 Apr 2026 16:29:46 +0000)_
#link("https://www.timesofisrael.com/harsh-israel-critic-analilia-mejia-wins-us-house-seat-in-new-jersey-special-election/")

*‘No regrets’: Venezuela’s Machado defends giving Nobel medal to Trump*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 16:08:43 +0000)_
#link("https://www.aljazeera.com/news/2026/4/18/no-regrets-venezuelas-machado-defends-giving-nobel-medal-to-trump?traffic_source=rss")

*LIVE: Chelsea vs Manchester United – Premier League*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 16:01:00 +0000)_
#link("https://www.aljazeera.com/sports/liveblog/2026/4/18/live-chelsea-vs-manchester-united-english-premier-league?traffic_source=rss")

*“Lords of war.” Brazil’s president condemns UN Security Council*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 15:30:28 +0000)_
#link("https://www.aljazeera.com/video/newsfeed/2026/4/18/lords-of-war-brazils-president-condemns-un-security?traffic_source=rss")

*French soldier serving with UNIFIL killed in Lebanon attack*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 15:16:08 +0000)_
#link("https://www.aljazeera.com/news/2026/4/18/french-soldier-serving-with-unifil-killed-in-lebanon-attack?traffic_source=rss")

*As fentanyl crisis evolves, experts say US is still ‘behind the eight ball’*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 15:13:44 +0000)_
#link("https://www.aljazeera.com/economy/2026/4/18/as-fentanyl-crisis-evolves-experts-say-us-is-still-behind-the-eight-ball?traffic_source=rss")

*Macron, UNIFIL blame Hezbollah for killing of French peacekeeper in Lebanon*  _(The Times of Israel — Sat, 18 Apr 2026 15:04:14 +0000)_
#link("https://www.timesofisrael.com/macron-unifil-blame-hezbollah-after-french-peacekeeper-killed-in-lebanon/")

*IDF confirms strikes on Hezbollah operatives in Lebanon, in first since ceasefire*  _(The Times of Israel — Sat, 18 Apr 2026 15:04:12 +0000)_
#link("https://www.timesofisrael.com/idf-confirms-strikes-on-hezbollah-operatives-in-lebanon-in-first-since-ceasefire/")

*French peacekeeper killed in southern Lebanon*  _(BBC News — Sat, 18 Apr 2026 14:53:17 GMT)_
#link("https://www.bbc.com/news/articles/cvg4mrm2vm0o?at_medium=RSS&at_campaign=rss")

*French film star Nathalie Baye dies aged 77, media report*  _(BBC News — Sat, 18 Apr 2026 14:52:15 GMT)_
#link("https://www.bbc.com/news/articles/cn9q48y9wr7o?at_medium=RSS&at_campaign=rss")

*UNICEF ‘outraged’ after Israeli forces kill water truck drivers in Gaza*  _(Al Jazeera – Breaking News, World News and Video from Al Jazeera — Sat, 18 Apr 2026 14:22:53 +0000)_
#link("https://www.aljazeera.com/news/2026/4/18/unicef-outraged-after-israeli-forces-kill-water-truck-drivers-in-gaza?traffic_source=rss")

*Millions listen to Ethiopian star's song taking swipe at government*  _(BBC News — Sat, 18 Apr 2026 13:13:21 GMT)_
#link("https://www.bbc.com/news/articles/cqj81g5dxkyo?at_medium=RSS&at_campaign=rss")

=== Source: `sonar`

\# Context Pack: Iran-Israel-US Conflict Scenario

The immediate backdrop involves a 10-day ceasefire between Israel and Lebanon that commenced Thursday, April 17, following weeks of escalating strikes between Israel and Hezbollah, an Iranian proxy.[1] This truce emerged after U.S. and Israeli military operations struck Iranian targets on February 28, 2026, prompting Iranian retaliation and subsequent Israeli counterstrikes that drew Hezbollah into active combat in early March.[4] The broader conflict has displaced over one million Lebanese residents and created significant regional instability.[1]

The ceasefire itself remains fragile and conditional. Israeli officials stated the country will only respond to "imminent threats from Hezbollah," while Prime Minister Netanyahu rejected terms demanded by Hezbollah, leaving uncertainty about the group's compliance.[1] The Lebanese armed forces' capacity to control Hezbollah remains questionable, introducing a critical variable in ceasefire sustainability. The 10-day arrangement expires April 22, creating a defined decision point for escalation or negotiated extension.

Diplomatic efforts center on U.S.-Iran negotiations mediated by Pakistan. Vice President JD Vance led a delegation that conducted 21 hours of talks but failed to reach agreement, after which Pakistani officials began visiting Iran and Gulf states to orchestrate renewed U.S.-Iran discussions.[1][2] President Trump has expressed optimism about achieving "amazing" results in forthcoming talks, though no date has been scheduled.[1] Trump stated that without a deal before April 22, "the fighting resumes," directly linking diplomatic success to ceasefire extension.[1]

A U.S. naval blockade of Iranian ports and coastal areas represents a critical complicating factor. Announced as a formal measure, this blockade is already affecting global gas prices, food costs, and supply chains.[2] Iran has responded by reimposing closure of the Strait of Hormuz and deploying IRGC gunboats to fire at ships, escalating maritime tensions despite the ceasefire on land.[5] This dual-track dynamic—land ceasefire alongside maritime confrontation—creates asymmetric pressure points.

Key actors maintain divergent positions. Trump administration officials frame negotiations as potentially successful while maintaining military pressure through the blockade. Netanyahu's rejection of Hezbollah's terms suggests Israeli skepticism about sustainable resolution. Iran has demonstrated strategic restraint by not pursuing all-out war despite Trump's rhetoric about returning Iran to "the stone age," instead employing asymmetric responses through proxies and maritime actions.[4] Pakistan's mediation role reflects broader regional interest in de-escalation, though its leverage remains limited.

Counter-narratives in reporting emphasize different threat assessments. Some sources highlight the blockade as illegal and destabilizing to global markets, while others frame it as necessa

=== Source: `tavily`

*Security official: 'Ceasefire is fragile, we're preparing to resume fighting' - Israel National News*  _(published )_
#link("https://www.israelnationalnews.com/news/425332")
Other key points will be ending Iran’s support for regional proxies, the status of the country’s ballistic missile program and Tehran’s request for the lifting of US sanctions.  According to an Israeli source, the Americans share Israel’s view on these demands, and there is little belief that Iran will compromise. Therefore, preparations are underway to resume fighting even before the two-week per

*Middle East crisis live: Iran peace talks under way as Trump claims US has begun clearing mines in strait of Hormuz - The Guardian*  _(published )_
#link("https://www.theguardian.com/world/live/2026/apr/11/middle-east-crisis-live-iranian-officials-arrive-in-islamabad-for-conditional-peace-talks-with-us")
Skip to navigationSkip to key eventsSkip to navigation  Print subscriptions  Search jobs  Sign in  Middle East crisis liveUS-Israel war on Iran  \# Middle East crisis live: Iran peace talks continue as Trump claims US has begun clearing mines in strait of Hormuz  US and Iranian media report peace talks are ongoing in Islamabad, while Netanyahu says Israel remains committed to fighting Iran   US and

*Israel braces for possible Iran escalation as Hormuz threats grow and US signals shift - ynetnews*  _(published )_
#link("https://www.ynetnews.com/article/hkn8i8wpbe")
Israeli officials said it remains unclear how the situation will develop. “It’s too early to know where this is going,” one official said, noting that while Trump appears eager to reach an agreement, Iran is maintaining a hard line. Trump has said he will not allow Iran to “blackmail” the United States following Tehran’s renewed closure of the Strait of Hormuz.  Pakistan continues to mediate betwe

*Hezbollah is Iran’s key proxy in US diplomacy - The Jerusalem Post*  _(published )_
#link("https://www.jpost.com/opinion/article-893074")
More than 60,000 Israeli civilians were evacuated beginning on October 8, 2023, amid fears of a cross-border invasion by Hezbollah’s Radwan forces. I am now returning for my 10th visit to the northern border since October 2023. Regardless of developments involving Iran, Israel’s northern front will remain volatile. These conflicts are not isolated; they are interconnected theaters in a regional ca

*America’s Suez Canal Conundrum - Manara Magazine*  _(published )_
#link("https://manaramagazine.org/2026/04/americas-suez-canal-conundrum/")
( McBride, J. (2026). “The War Against Time in the Middle East”, Atlas Institute for International Affairs, 10 March 2026, retrieved from: .   ( ACLED (2025). “Twelve days that shook the region: Inside the Iran-Israel war”, 4 July 2025, retrieved from:    ( Gross, S., Talmadge, C. and Sisson, M.E. (2026). “Why Iran’s disruption of the Strait of Hormuz matters”, Brookings, 19 March 2026, retrieved 

*US naval blockade of Strait of Hormuz to begin; Israel braces for possible Iran surprise attack - ynetnews*  _(published )_
#link("https://www.ynetnews.com/article/b1mwhvq2we")
“There has never been coordination like this — not in the history of the state, and not in the history of the Jewish people,” he said.  Despite uncertainty over whether the conflict will resume, U.S. officials have indicated that large-scale bombing is less likely than limited military strikes.  At the Cabinet meeting, Netanyahu also urged ministers and coalition lawmakers to be cautious in their 

*US and Iran Weigh Truce Extension With Hormuz Still Shuttered - Insurance Journal*  _(published )_
#link("https://www.insurancejournal.com/news/international/2026/04/16/866129.htm")
Trump has vacillated between declaring the conflict with Iran nearly won and threatening escalation, while questions remain about what drove the US and Israel to launch the latest bombardment — chief among them concerns over Iran’s nuclear program. Trump told the New York Post he’s unhappy about reports that the US proposed a two-decade moratorium on enrichment, saying Iran must never be allowed t

*Wary Investors Eye Another Escalation in Iran War - Bloomberg.com*  _(published )_
#link("https://www.bloomberg.com/news/articles/2026-04-12/wary-investors-eye-another-escalation-in-iran-war-markets-wrap")
War With Iran:  US Hormuz Blockade  Ceasefire  Netanyahu-Trump Divisions  Iran’s Uranium  Markets  \# Wary Investors Eye Another Escalation in Iran War  Contact us:  Provide news feedback or report an error  Confidential tip?  Send a tip to our reporters  Site feedback:  Take our Survey  By Bernadette Toh, Julien Ponthus, and Matthew Burgess  Updated on  The prospect that the Iran war will reintens
#pagebreak()
== Methodology and interpretation notes

*Run time.* 18 Apr 2026 20:54 UTC. All horizon end-times in this report are computed deterministically as run-time + horizon (1m approximated as 30 days):

- `24h` → 19 Apr 2026 20:54 UTC
- `1w` → 25 Apr 2026 20:54 UTC
- `1m` → 18 May 2026 20:54 UTC

*Grounding stack.* Each source is invoked independently and the results concatenated into the Council_Head's input. The Head then produces a single reconciled SITREP.

- `rss` — ok (45 items)
- `sonar` — ok (0 items)
- `tavily` — ok (8 items)

*Panel.* Five models from different training lineages, polled in parallel with identical prompts. Members do not see each other's outputs.

- #mdot(rgb("#10b981"), "GLM") GLM — `z-ai/glm-5.1` (lineage: Zhipu)
- #mdot(rgb("#1e88a8"), "DSK") DeepSeek — `deepseek/deepseek-v3.2` (lineage: DeepSeek)
- #mdot(rgb("#4285f4"), "GEM") Gemini — `google/gemini-3-flash-preview` (lineage: Google)
- #mdot(rgb("#cc785c"), "CLD") Claude — `anthropic/claude-sonnet-4.6` (lineage: Anthropic)
- #mdot(rgb("#8b5cf6"), "KMI") Kimi — `moonshotai/kimi-k2.5` (lineage: Moonshot)

*Council Head.* `anthropic/claude-sonnet-4.6` (produces SITREP + uncertainties). *Report Author.* `anthropic/claude-sonnet-4.6` (clusters predictions, writes synthesis). Both roles are single-shot calls with structured-output JSON schema.

*Tone heuristic.* Each prediction is classified as escalatory / conciliatory / mixed by keyword matching. This is a coarse post-hoc label — it reflects the *tone of the predicted event*, not whether a member believes escalation is desirable. Escalatory keywords include: strike, war, escalat, attack, kill, assassinat, proxy, hostilit, collapse, enrichment… Conciliatory keywords include: cease[- ]?fire, agreement, deal, de-?escalat, talks?, diplomac, pause, withdrawal, release, normali[zs]…

*What this report is.* A structured snapshot of five LLMs' concrete predictions at a single moment in time, grounded in current reporting. It is useful for (a) mapping where models agree and disagree, (b) surfacing concrete watch-triggers, and (c) comparing against actual outcomes after the horizon lapses.

*What this report is not.* It is not a calibrated probabilistic forecast in the superforecaster sense — no base-rate adjustment, no market aggregation, no explicit bias correction. LLM confidences are *model-reported* and not necessarily well-calibrated. Tail risks in particular tend to be under-weighted by default-temperature sampling.