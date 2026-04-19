#set document(title: "OSINT Signals Council — Ongoing Iran-Israel-US armed conflict. What 5 OSINT signals ")
#set page(
  paper: "a4",
  margin: (top: 2.6cm, bottom: 2.4cm, left: 2cm, right: 2cm),
  numbering: "1 / 1",
  number-align: center,
  header: context {
    if counter(page).get().first() > 1 {
      set text(size: 8pt, fill: rgb("#6b7280"))
      grid(columns: (1fr, auto),
        [Geopol Forecast Council — OSINT variant],
        [18 Apr 2026 22:50 UTC],
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

#v(2cm)
#align(center)[
  #text(size: 26pt, weight: "bold")[OSINT Signals Council]
  #v(4pt)
  #text(size: 11pt, fill: rgb("#6b7280"))[What five open-source signals each council member would watch]
]
#v(1.2cm)
#block(inset: 14pt, stroke: 0.6pt + rgb("#d1d5db"), radius: 4pt, width: 100%)[
  #text(size: 9pt, fill: rgb("#6b7280"), weight: "bold")[SCENARIO]
  #v(4pt)
  #text(size: 12pt)[Ongoing Iran-Israel-US armed conflict. What 5 OSINT signals should be watched over the 24h and 1w horizons, with interpretation and monitoring strategy for each?]
]
#v(10pt)
#grid(columns: (auto, 1fr), column-gutter: 14pt, row-gutter: 6pt,
  text(fill: rgb("#6b7280"))[Run time], [18 Apr 2026 22:50 UTC],
  text(fill: rgb("#6b7280"))[Horizon 24h], [19 Apr 2026 22:50 UTC],
  text(fill: rgb("#6b7280"))[Horizon 1w], [25 Apr 2026 22:50 UTC],
  text(fill: rgb("#6b7280"))[Variant], [OSINT-signals (Claude-authored synthesis)],
)
#pagebreak()
= Executive summary

The council produced *50* distinct OSINT signal recommendations across 5 models and 2 horizons. Below, signals are clustered by semantic similarity so that the same underlying observable raised by different models counts once.

*24h* — no signal was raised by 3+ members; panel is fragmented.

*1w* — no signal was raised by 3+ members; panel is fragmented.

Of *188* cited sources, *79%* are free or freemium; *19%* paid. Dominant source types: `news_outlet` (40), `gov_bulletin` (39), `social` (23), `market_data` (18), `dashboard` (18).

Languages represented: `en` (134), `multi` (14), `he` (11), `ar` (9), `fa` (8), `fr` (3).

#pagebreak()
= Convergence, divergence, and imagination by horizon

== Horizon 24h — through 19 Apr 2026 22:50 UTC

*0* convergent signal(s) (≥3 members), *1* paired, *23* singleton. Total distinct clusters: *24*.

=== Most imaginative singletons / pairs

*Tehran Stock Exchange (TSE) daily trading volume & price spike*  — class: `economic` · novelty 0.70 · by Council\_Member\_DeepSeek

_Interpretation._  A spike in the daily trading volume of the Tehran Stock Exchange (TSE) Total Index, particularly if coupled with a sharp price move (\>5%), could signal either panic selling by domestic investors fearing escalation or a coordinated effort by state-backed actors to stabilize the market ahead of anticipated unrest. A flat, low-volume market would suggest capital controls are effective or that the public is in a 'wait-and-see' mode. A false signal could be a technical glitch or a single large block trade in a state-owned company that distorts the index.

_Monitoring._  Monitor the TSE Total Index (TEDPIX) data on the TSE website or via financial data aggregators like TradingView. Check at market close (Tehran time, ~12:30 UTC). A meaningful movement is a daily volume increase of \>30% over the 5-day average AND an absolute index move of \>±3%. Cross-check with analysis from financial news outlets covering Iran (e.g., Bourse & Bazaar) for context on specific sector moves and potential government intervention rumors.

_Sources._  Tehran Stock Exchange (TSE) Market Watch (free); TradingView - TEDPIX Chart (free); Bourse & Bazaar (free)

*US-Israel 'Yellow Line' terminology in Hebrew-language military briefings*  — class: `military` · novelty 0.70 · by Council\_Member\_Gemini

_Interpretation._  Expansion of the 'Yellow Line' definition to include 'free-fire zones' indicates a shift to a permanent buffer zone (Gaza model). Retraction or lack of mention suggests the line is a temporary tactical posture. Trap: The term may be used psychologically to deter Hezbollah return without actual physical enforcement.

_Monitoring._  Daily review of IDF Spokesperson (Daniel Hagari) briefings and Hebrew military analysts on Telegram. Look for the specific phrase 'Kav Tzahov' (Yellow Line).

_Sources._  IDF Official Telegram (free); Haaretz Military News (registration)

*Hezbollah MLRS Launcher Thermal Signatures in South Lebanon UNIFIL Zone*  — class: `satellite` · novelty 0.70 · by Council\_Member\_Kimi

_Interpretation._  Detection of new Multiple Launch Rocket System positions or thermal exhaust in Ayta ash-Shab, Bint Jbeil, or Maroun al-Ras indicates preparation for coordinated offensive against Israel. Absence of military hardware in historical launch sites suggests Hezbollah is maintaining the ceasefire. False-signal trap: Agricultural vehicles or civilian trucks with similar radar/thermal signatures may be misidentified; require multi-spectral confirmation (visible + SWIR) and correlation with UNIFIL ground patrol reports.

_Monitoring._  Task Planet Labs SkySat or Maxar WorldView-3 for daily revisit over 10 key villages in Sector West (UNIFIL). Use change detection algorithms comparing to February 2026 baseline. Threshold: Any new launcher-sized objects (\>6m length) in open terrain. Cross-check with UNIFIL public incident reports and Lebanese Army Twitter for de-escalation announcements.

_Sources._  Planet Labs (paid); Maxar Technologies (paid); UNIFIL Public Affairs (free)

*IDF Reservist Call-Up Notices on Hebrew Telegram Channels*  — class: `social` · novelty 0.60 · by Council\_Member\_GLM

_Interpretation._  Surge in reservist call-up notices, emergency assembly messages, or 'tsav 8' (emergency mobilization) references on Hebrew Telegram signals Israel preparing for Lebanon front escalation or Iran contingency operations. Stable or declining call-up chatter indicates Israel maintaining current posture without escalation intent. FALSE-SIGNAL TRAP: Routine training cycle call-ups or panic amplification by non-official channels can mimic mobilization; call-ups for existing Gaza operations could be misattributed to Lebanon/Iran contingencies.

_Monitoring._  Monitor key Hebrew-language Telegram channels used by IDF reservist communities for keyword frequency: 'צו 8' (tsav 8), 'גיוס' (draft), 'חירום' (emergency), 'מילואים' (reserves). Track mention count against 7-day rolling baseline. Threshold: \>2x baseline daily mention count sustained over 12h = meaningful signal; confirmed tsav 8 order from IDF spokesperson = critical. Cross-check against official IDF spokesperson statements and mainstream Israeli media (Walla, Ynet, Haaretz) before treating unofficial Telegram notices as confirmed.

_Sources._  IDF Spokesperson (X/Twitter) (free); Walla News (free); Ynetnews (free)

== Horizon 1w — through 25 Apr 2026 22:50 UTC

*0* convergent signal(s) (≥3 members), *1* paired, *23* singleton. Total distinct clusters: *24*.

=== Most imaginative singletons / pairs

*Hezbollah 'Martyr' funeral announcements in Southern Lebanon (via Al-Manar)*  — class: `social` · novelty 0.80 · by Council\_Member\_Gemini

_Interpretation._  An uptick in funerals without corresponding IDF strike reports suggests Hezbollah is suffering 'accidental' casualties while preparing IEDs/missiles (indicating escalation). A decrease suggests adherence to the ceasefire. Trap: Hezbollah may delay funeral announcements to hide casualty counts from Israeli intelligence.

_Monitoring._  Daily scan of Al-Manar (Arabic version) and Hezbollah-affiliated Telegram channels (e.g., 'Lebanon News').

_Sources._  Al-Manar TV News (free); War Monit (Telegram) (free)

*VLCC Cape of Good Hope Re-routing Volume from Persian Gulf Routes*  — class: `maritime` · novelty 0.70 · by Council\_Member\_GLM

_Interpretation._  Increasing VLCC re-routing around Cape of Good Hope (vs. Hormuz/Suez) signals the shipping market pricing sustained Hormuz closure; charterers and owners making structural decisions implying weeks-long disruption expectation. Stable or decreasing Cape re-routing with return to Hormuz routes signals market confidence in reopening. FALSE-SIGNAL TRAP: Some Cape re-routing may be driven by Suez Canal constraints, Red Sea Houthi threat, or charterer cost optimization rather than Hormuz-specific risk; VLCCs take ~6 weeks for Cape vs. ~2 weeks for Suez, so re-routing decisions lag current conditions and may reflect risk-aversion from the initial closure rather than current expectations.

_Monitoring._  Track VLCC vessel counts on Cape of Good Hope route vs. Hormuz/Suez route via AIS. Monitor TankerTrackers weekly re-routing tallies and freight rate differentials. Track VLCC spot rates for Middle East-Asia routes (Hormuz-dependent) vs. West Africa-Asia (Hormuz-independent). Threshold: \>30% of Middle East-origin VLCCs re-routing via Cape sustained for 1 week = structural market expectation of prolonged closure; return of \>50% of VLCCs to Hormuz transit = meaningful de-escalation. Cross-check against Brent M1-M3 spread (24h signal) and physical Saudi/Russian Pacific-route volumes to isolate Hormuz-specific vs. broader factors.

_Sources._  TankerTrackers (freemium); MarineTraffic (VLCC route filtering) (freemium); Clarksons Shipping Intelligence Network (paid)

*Egyptian-Pakistani Diplomatic Shuttle Frequency (VIP Flight Tracking)*  — class: `diplomatic` · novelty 0.70 · by Council\_Member\_Kimi

_Interpretation._  Daily or bidirectional VIP flights (Pakistani AF Gulfstream/EGYPTAIR VIP) between Cairo, Islamabad, Tehran, and Doha indicate urgent mediation push to secure binding agreement before ceasefire collapse. Gaps \>72 hours suggest talks stalled. False-signal trap: Routine OIC coordination on Gaza or humanitarian aid flights may be misread as Iran-US mediation; verify with Foreign Ministry statements mentioning 'final agreement' or 'nuclear deal'.

_Monitoring._  Monitor ADS-B Exchange for Pakistani Air Force (PAF) GLF4/5 (registrations J-755, J-756) and EGYPTAIR VIP A320/B737 (SU-GGG, SU-GGE) flying to Doha, Muscat, or Tehran. Track Egyptian MFA and Pakistani ISPR Twitter for 'shuttle diplomacy' keywords. Weekly aggregation. Threshold: \>3 high-level visits per week. Cross-check with Al Jazeera diplomatic desk reporting and flight manifests.

_Sources._  ADS-B Exchange (VIP Tracking) (free); Egyptian Foreign Ministry (Twitter) (free); Pakistan ISPR (free)

*Persian-language Telegram channel sentiment and content analysis: IRGC-affiliated channels vs. reformist/opposition channels post-Khamenei death*  — class: `social` · novelty 0.65 · by Council\_Member\_Claude

_Interpretation._  A shift in IRGC-affiliated Telegram channels toward martyrdom narratives, calls for 'revenge,' or lionization of new leadership figures signals the regime is consolidating around a hardline successor posture and military escalation is more likely. Reformist or opposition channels showing increased coordination, protest call-outs, or sharing of protest logistics signals domestic unrest is approaching an organized threshold. Silence or heavy moderation across both channel types signals active IRGC suppression of the information environment. False-signal trap: IRGC-linked channels are known to run coordinated inauthentic behavior campaigns; a sudden surge in pro-regime content may be astroturfing rather than genuine mobilization.

_Monitoring._  Use Telegram monitoring tools (Telepathy, TGStat) to track follower counts, posting frequency, and engagement rates for 10–15 key Persian-language channels spanning IRGC-affiliated (e.g., Tasnim Telegram, Sepah News), reformist (e.g., Kalameh), and diaspora opposition (e.g., Iran International Telegram). Monitor daily. Use keyword tracking for 'رهبر' (leader), 'انقلاب' (revolution), 'اعتراض' (protest), 'انتقام' (revenge). Threshold: \>50% increase in posting frequency or \>100K new subscribers on any single channel within 72 hours. Cross-check with Iran International and Radio Farda reporting.

_Sources._  TGStat (Telegram analytics) (freemium); Iran International Telegram channel (free); Radio Farda (RFE/RL Persian Service) (free)

#pagebreak()
= Most imaginative signals overall

_Ranked by self-reported novelty. Claude's judgment: these are the signals the panel flagged as cleverest or most non-obvious._

- *Hezbollah 'Martyr' funeral announcements in Southern Lebanon (via Al-Manar)* — `social` · Council\_Member\_Gemini · 1w · novelty 0.80

  An uptick in funerals without corresponding IDF strike reports suggests Hezbollah is suffering 'accidental' casualties while preparing IEDs/missiles (indicating escalation). A decrease suggests adherence to the ceasefire. Trap: Hezbollah may delay funeral anno

- *VLCC Cape of Good Hope Re-routing Volume from Persian Gulf Routes* — `maritime` · Council\_Member\_GLM · 1w · novelty 0.70

  Increasing VLCC re-routing around Cape of Good Hope (vs. Hormuz/Suez) signals the shipping market pricing sustained Hormuz closure; charterers and owners making structural decisions implying weeks-long disruption expectation. Stable or decreasing Cape re-routi

- *Tehran Stock Exchange (TSE) daily trading volume & price spike* — `economic` · Council\_Member\_DeepSeek · 24h · novelty 0.70

  A spike in the daily trading volume of the Tehran Stock Exchange (TSE) Total Index, particularly if coupled with a sharp price move (\>5%), could signal either panic selling by domestic investors fearing escalation or a coordinated effort by state-backed actors

- *US-Israel 'Yellow Line' terminology in Hebrew-language military briefings* — `military` · Council\_Member\_Gemini · 24h · novelty 0.70

  Expansion of the 'Yellow Line' definition to include 'free-fire zones' indicates a shift to a permanent buffer zone (Gaza model). Retraction or lack of mention suggests the line is a temporary tactical posture. Trap: The term may be used psychologically to det

- *Hezbollah MLRS Launcher Thermal Signatures in South Lebanon UNIFIL Zone* — `satellite` · Council\_Member\_Kimi · 24h · novelty 0.70

  Detection of new Multiple Launch Rocket System positions or thermal exhaust in Ayta ash-Shab, Bint Jbeil, or Maroun al-Ras indicates preparation for coordinated offensive against Israel. Absence of military hardware in historical launch sites suggests Hezbolla

#pagebreak()
= Visualisations

== Signal convergence by horizon
_Horizontal bars show how many of the five council members independently raised each clustered signal. Clusters are formed by Jaccard similarity of signal names (threshold 0.35)._

#image("viz/signal_overlap.png", width: 100%)
#pagebreak()
== Signal-class composition by member
_Each member's five-per-horizon × N-horizon signal budget, coloured by class. Shows which models spread across classes vs double down on a single lens._

#image("viz/class_mix.png", width: 100%)

== Source access-tier mix
_Share of cited sources that are free, freemium, registration-gated, or paid. "Paid" does not mean "closed": every source here is, by instruction, open._

#image("viz/source_tier.png", width: 100%)
#pagebreak()
== Novelty by member and horizon
_One dot per signal. Y-axis is the model's self-reported novelty score. Tight clusters near the bottom suggest a conservative signal diet; spread toward the top suggests imaginative picks._

#image("viz/novelty_scatter.png", width: 100%)
#pagebreak()
= World-state context (Council Head SITREP)

_As-of: 2026-04-18T22:50:39+00:00_

As of 2026-04-18T22:50:39Z, the Iran-Israel-US armed conflict is in its fifth week following the killing of Supreme Leader Ali Khamenei in Israeli-US strikes on approximately February 28, 2026. The conflict has passed through an initial kinetic phase, a collapsed 14-day ceasefire, and is now in a fragile post-ceasefire limbo characterized by competing violations, active diplomacy, and renewed maritime confrontation.

STRAIT OF HORMUZ: The most acute flashpoint as of this reporting window is the Strait of Hormuz. Iran reimposed a closure of the strait on approximately April 18, citing the continued US naval blockade of Iran-linked shipping as a violation of the ceasefire terms. IRGC gunboats have fired on vessels, and Iranian military forces were filmed ordering an Indian commercial ship to abort its passage. Iran's top negotiator Mohammad Bagher Ghalibaf called the US blockade a 'clumsy and ignorant decision.' Trump, speaking publicly, said Iran 'got a little cute' by blocking Hormuz again but characterized nuclear and broader talks as going 'really well.' Iran's security council stated it will hold the strait until the 'war fully ends.' Reports indicate the US intends to seize Iran-linked ships worldwide. The BBC and Al Jazeera both confirm the closure and ship attacks; sources agree on the basic facts but differ on framing of ceasefire responsibility.

DIPLOMATIC TRACK: A ceasefire has nominally been in effect since approximately April 8, following Trump's announcement the prior evening. An initial round of peace talks was held in Pakistan the weekend of April 12-13; US Vice President JD Vance departed without a deal. As of April 16, the US had not formally requested a ceasefire extension. Egypt's Foreign Minister stated Cairo and Islamabad are working on a 'final agreement.' Pakistan's army chief visited Tehran amid Lebanon ceasefire push. US-Iran talks are described as showing progress by some sources but no binding agreement exists. The US is simultaneously deploying over 10,000 additional troops to the Middle East, per a Haaretz report dated April 15.

LEBANON FRONT: A separate Israel-Lebanon ceasefire track is active but fragile. On April 18, an IDF reservist, Barak Kalfon (48), was killed by a Hezbollah explosive device in Lebanon; three other troops were wounded. The IDF confirmed it conducted strikes on Hezbollah operatives in Lebanon on April 18, described as the first strikes since the ceasefire, justified under self-defense provisions of the deal. Separately, a French UNIFIL peacekeeper was killed in southern Lebanon on April 18; President Macron and UNIFIL directly blamed Hezbollah, which denied involvement. Israel announced it has established a 'yellow line' in Lebanon analogous to the one in Gaza. Israel-Lebanon talks began in Washington on approximately April 15, though these are explicitly not linked to US-Iran negotiations per a senior US official. Hezbollah retains significant military capabilities including long-range missiles and domestic production infrastructure despite thousands of Israeli strikes.

CYBER DOMAIN: Iranian-linked groups including CyberAv3ngers and IRGC-associated actors have been conducting ongoing campaigns targeting industrial control systems, water infrastructure, and energy sectors. A Forbes analysis dated April 18 argues the Trump-brokered ceasefire framework ignores cyber operations entirely, leaving a significant unaddressed escalation vector. US agency advisories confirm active exploitation of internet-exposed systems.

INTERNAL IRAN: Khamenei's death and infrastructure strikes have created conditions for internal unrest. Sonar grounding assesses high-confidence protests within days, compounded by ICJ filings. IRGC responses and internet shutdowns are anticipated monitoring signals.

REGIONAL POSTURE: Saudi Arabia has been intercepting drones. Kuwait has faced strikes. Gulf bases remain targeted. US Envoy Tom Barrack publicly argued on April 18 that Israeli policy toward Syria and Turkey is strategically counterproductive, signaling US-Israel friction on regional strategy. Israeli Defense Chief Zamir stated Israel remains on high alert and has approved continued operational plans for both Lebanon and Iran contingencies.

CONTRADICTIONS: BBC and Al Jazeera confirm Hormuz closure and ship attacks but differ on whether the US blockade constitutes a ceasefire violation. Sonar source states Khamenei was killed February 28; this is not independently confirmed by RSS feeds but is treated as background context. Hezbollah denies killing the French peacekeeper; Macron and UNIFIL assert it did. Iran denies nuclear talks are substantive while Egypt and Pakistan claim progress toward a final agreement.

== Key actors
- *Iran (IRGC / Security Council)* — Strait of Hormuz will remain closed until US lifts naval blockade and war fully ends; US blockade violates ceasefire; rejects characterization of talks as substantive
- *Donald Trump (US President)* — Naval blockade remains in full force until Iran reaches a deal including on nuclear program; talks going well; Iran acted provocatively by re-closing Hormuz
- *Mohammad Bagher Ghalibaf (Iran chief negotiator)* — US naval blockade is a clumsy and ignorant decision; Iran asserts sovereign control of Hormuz
- *Benjamin Netanyahu (Israeli PM)* — Israel on high alert; operational plans approved for Lebanon and Iran; no premature concessions on Hezbollah return to south Lebanon
- *Hezbollah* — Not concerned by Israel-Lebanon talks; denies killing French UNIFIL peacekeeper; retains military posture in southern Lebanon
- *Emmanuel Macron (French President)* — Directly blames Hezbollah for killing of French UNIFIL peacekeeper; demands accountability
- *Egypt / Pakistan (mediators)* — Working jointly on a US-Iran final agreement; facilitating diplomatic channel between parties
- *IDF / Israeli military* — Conducted first post-ceasefire strikes on Hezbollah operatives under self-defense provisions; established yellow line in Lebanon
- *Tom Barrack (US Envoy)* — Israeli policy toward Syria and Turkey is strategically counterproductive; Turkey plays productive role in Gaza diplomacy

== Load-bearing uncertainties
- Whether the US naval blockade of Iran-linked shipping will be lifted or maintained, which determines whether Iran reopens the Strait of Hormuz and whether the ceasefire framework survives
- Whether US-Iran nuclear and broader talks produce a binding agreement before the informal ceasefire collapses entirely, given no formal extension has been requested and Vance departed Pakistan without a deal
- Whether Hezbollah escalates from isolated IED incidents and proxy harassment to a coordinated offensive, which would open a second major front and test degraded but intact long-range missile and drone capabilities
- Whether Iranian cyber operations (CyberAv3ngers, IRGC-linked actors) escalate to destructive attacks on Western critical infrastructure during kinetic pauses, given the ceasefire framework contains no cyber provisions
- Whether internal Iranian unrest following Khamenei's death and infrastructure damage reaches a threshold that disrupts IRGC command coherence or forces political transition, altering Iran's negotiating posture
- Whether the killing of the French UNIFIL peacekeeper and IDF post-ceasefire strikes in Lebanon trigger a broader breakdown of the Israel-Lebanon ceasefire track and draw European actors more directly into the conflict

== Reporting contradictions
- Ceasefire responsibility for Hormuz: Iran claims the US naval blockade violates the ceasefire, making its closure a defensive response; US and Israeli sources frame Iran's re-closure as a provocative violation of the ceasefire terms. Both cannot be simultaneously correct under the same ceasefire text.
- Hezbollah and the French UNIFIL killing: Macron and UNIFIL directly attribute the April 18 killing of a French peacekeeper to Hezbollah; Hezbollah denies any connection. No independent forensic confirmation is available in the grounding sources.
- Status of US-Iran talks: Egypt and Pakistan describe active progress toward a final agreement; Iranian officials deny substantive talks are underway and frame the diplomatic channel as limited. US sources describe talks as going well without specifying content.
- Khamenei death date: Sonar grounding states Khamenei was killed on February 28, 2026; this specific date and event are not corroborated or contradicted by RSS or Tavily sources, which treat the conflict as ongoing background without re-stating the initiating event.
#pagebreak()
= Appendix: full signal inventory

== Council\_Member\_GLM (z-ai/glm-5.1)
_Notes._  These signals are designed to be complementary across horizons: the 24h set captures immediate escalation/de-escalation dynamics (kinetic posture, market pricing, real-time cyber chatter, diplomatic cadence), while the 1w set captures structural shifts (force posture via satellite, regime stability via internet shutdowns, escalation preparation via Hezbollah media, market structural adaptation via VLCC re-routing, backchannel viability via Omani engagement). Key methodological caveat: several signals (especially hacktivist Telegram chatter, Hezbollah martyrdom notices, and internet shutdowns) have bidirectional ambiguity where silence can mean either de-escalation or OPSEC before escalation. All such signals require cross-checking against at least one independent source before treating movement as meaningful. The contradiction between Iran denying substantive talks and mediators claiming progress makes diplomatic signals particularly prone to misread—always triangulate mediator claims against both Iranian and US official statements.

=== Horizon 24h

1. *IRGC Fast-Boat Sortie Density at Strait of Hormuz* — `maritime` · novelty 0.30

   _Interpretation._  Increased IRGC gunboat sorties, vessel interdictions, or firing incidents in the Hormuz corridor signal Iran enforcing closure more aggressively and moving toward wider maritime confrontation. Decreased sorties and zero interdictions over 24-48h signal potential de-escalation, backchannel progress, or tactical repositioning. FALSE-SIGNAL TRAP: Routine patrol rotation or weather-driven sorties can mimic enforcement surges; a single high-profile interception may be performative (staged for media) rather than indicative of sustained closure posture.

   _Monitoring._  Monitor AIS data for IRGC-linked vessel transits in the Hormuz corridor (26.0-27.0°N, 56.0-57.0°E). Cross-reference with commercial vessel distress/abort reports via TankerTrackers and geolocated social media footage of IRGC gunboat activity. Threshold: \>3 confirmed IRGC vessel interdictions or gunboat sorties in 24h = meaningful escalation; 0 interdictions for 48h = meaningful de-escalation. Cross-check social media claims against AIS gaps and commercial operator reports before treating as confirmed.

   _Rationale._  Strait of Hormuz is the most acute flashpoint per SITREP; IRGC enforcement posture directly determines whether the maritime confrontation escalates into wider conflict or de-escalates as diplomacy progresses.

   _Sources:_
   - TankerTrackers (\@TankerTrackers) (free, social, `en`) — `https://twitter.com/tankertrackers`
   - MarineTraffic (Live AIS) (freemium, ais\_shipping, `multi`) — `https://www.marinetraffic.com`
   - Lloyd's List Intelligence (paid, news\_outlet, `en`) — `https://www.lloydslist.com`
   - BBC Monitoring (paid, news\_outlet, `multi`) — `https://monitoring.bbc.co.uk`

2. *IDF Reservist Call-Up Notices on Hebrew Telegram Channels* — `social` · novelty 0.60

   _Interpretation._  Surge in reservist call-up notices, emergency assembly messages, or 'tsav 8' (emergency mobilization) references on Hebrew Telegram signals Israel preparing for Lebanon front escalation or Iran contingency operations. Stable or declining call-up chatter indicates Israel maintaining current posture without escalation intent. FALSE-SIGNAL TRAP: Routine training cycle call-ups or panic amplification by non-official channels can mimic mobilization; call-ups for existing Gaza operations could be misattributed to Lebanon/Iran contingencies.

   _Monitoring._  Monitor key Hebrew-language Telegram channels used by IDF reservist communities for keyword frequency: 'צו 8' (tsav 8), 'גיוס' (draft), 'חירום' (emergency), 'מילואים' (reserves). Track mention count against 7-day rolling baseline. Threshold: \>2x baseline daily mention count sustained over 12h = meaningful signal; confirmed tsav 8 order from IDF spokesperson = critical. Cross-check against official IDF spokesperson statements and mainstream Israeli media (Walla, Ynet, Haaretz) before treating unofficial Telegram notices as confirmed.

   _Rationale._  IDF has approved operational plans for both Lebanon and Iran contingencies per SITREP; reservist mobilization is the most immediate observable precursor to escalation on either front, especially given the fragile Lebanon ceasefire after the UNIFIL killing.

   _Sources:_
   - IDF Spokesperson (X/Twitter) (free, social, `he`) — `https://twitter.com/idfspokesperson`
   - Walla News (free, news\_outlet, `he`) — `https://www.walla.co.il`
   - Ynetnews (free, news\_outlet, `he`) — `https://www.ynetnews.com`
   - Haaretz (freemium, news\_outlet, `en`) — `https://www.haaretz.com`

3. *CyberAv3ngers/IRGC-Linked Hacktivist Telegram Channel Activity Volume* — `cyber` · novelty 0.50

   _Interpretation._  Increased posting frequency, new target claims, or operational 'teaser' content on Iranian hacktivist channels signals cyber actors escalating or preparing destructive campaigns during the kinetic pause. Decreased or routine posting indicates cyber operations remaining at current campaign level. FALSE-SIGNAL TRAP: Hacktivist channels frequently inflate claims or repost old operations; increased chatter could be performative propaganda rather than operational preparation; conversely, quiet channels could indicate OPSEC discipline before a real attack rather than de-escalation.

   _Monitoring._  Monitor known CyberAv3ngers and IRGC-linked hacktivist Telegram channels for posting frequency and content type. Categorize: claims of access, DIB claims, ICS targeting claims, recruitment posts. Threshold: \>3 new target claims in 24h or any claim of destructive (vs. disruptive) ICS impact = meaningful escalation; shift from water/ICS targeting to grid/gas pipeline claims = critical escalation. Cross-check claimed intrusions against CISA advisories, ICS-CERT alerts, and utility operator statements before treating as confirmed.

   _Rationale._  The ceasefire framework explicitly ignores cyber operations per SITREP; Iranian-linked groups are already targeting ICS, water, and energy infrastructure, making cyber escalation the most likely unaddressed escalation vector during kinetic pauses.

   _Sources:_
   - CISA Cybersecurity Advisories (free, gov\_bulletin, `en`) — `https://www.cisa.gov/news-events/cybersecurity-advisories`
   - Mandiant Threat Intelligence (paid, think\_tank, `en`) — `https://www.mandiant.com`
   - Recorded Future Threat Intelligence (paid, api, `en`) — `https://www.recordedfuture.com`
   - Hackmageddon (free, news\_outlet, `en`) — `https://www.hackmageddon.net`

4. *Brent Front-Month vs 3-Month Futures Spread (M1-M3)* — `economic` · novelty 0.30

   _Interpretation._  Widening backwardation (front-month premium increasing vs. 3-month) signals the market pricing higher immediate Hormuz disruption risk and expectation of sustained closure or escalation. Narrowing spread or shift toward contango signals market pricing de-escalation or Hormus reopening. FALSE-SIGNAL TRAP: Spread can widen due to non-Hormuz factors (OPEC+ production decisions, China demand revisions, US inventory draws); speculative positioning can distort spreads independent of physical supply risk.

   _Monitoring._  Monitor ICE Brent crude M1-M3 spread on 15-minute intervals during trading hours. Track absolute level and rate of change. Threshold: spread \>\$5/bbl backwardation sustained = meaningful Hormuz risk premium; spread narrowing by \>\$2/bbl in 24h = meaningful de-escalation signal. Cross-check against Dubai/Oman crude spreads (more directly Hormuz-exposed) and physical VLCC freight rates on Hormuz routes to confirm the move is Hormuz-driven rather than macro-driven.

   _Rationale._  Strait of Hormuz closure is the most acute flashpoint; oil market pricing is the fastest and most honest real-time assessment of whether the market expects escalation or de-escalation, cutting through contradictory diplomatic rhetoric from all parties.

   _Sources:_
   - ICE Futures Europe (paid, market\_data, `en`) — `https://www.theice.com`
   - TradingView (BRN1!/BRN3!) (freemium, dashboard, `multi`) — `https://www.tradingview.com`
   - S&P Global Platts (paid, market\_data, `en`) — `https://www.spglobal.com/platts`
   - Bloomberg Energy Markets (paid, market\_data, `en`) — `https://www.bloomberg.com/energy`

5. *Egypt-Pakistan Joint Mediator Statement Frequency and Specificity* — `diplomatic` · novelty 0.40

   _Interpretation._  Increased frequency with more specific language ('final agreement framework,' 'timeline for implementation') signals genuine diplomatic progress toward a binding deal. Decreased frequency or vaguer language ('constructive atmosphere,' 'continued engagement') signals diplomatic stalling or breakdown. FALSE-SIGNAL TRAP: Mediators may issue optimistic statements for domestic/regional audiences even when talks are stalled; silence does not necessarily mean failure—backchannel progress often occurs without public statements.

   _Monitoring._  Monitor official statements from Egyptian MFA and Pakistani ISPR/FO for references to Iran-US talks, 'final agreement,' ceasefire extension, Hormuz. Track specificity gradient: vague → specific timeline language = progress; specific → vague = regression. Threshold: Any joint Egypt-Pakistan statement referencing a 'timeline' or 'framework' for a final agreement = meaningful progress signal; 72h with no statement from either mediator after previously daily cadence = meaningful stall signal. Cross-check mediator language against concurrent Iranian and US official statements for consistency; if mediators claim progress but Iran denies substantive talks (as per SITREP contradictions), treat mediator claims cautiously.

   _Rationale._  Egypt and Pakistan are the named mediators working on a 'final agreement' per SITREP; their public communication cadence and specificity are the most direct OSINT window into whether diplomatic progress is real or performative, especially given the contradiction between Iran denying substantive talks and mediators claiming progress.

   _Sources:_
   - Egyptian Ministry of Foreign Affairs (free, gov\_bulletin, `ar`) — `https://mfa.gov.eg`
   - Pakistan ISPR (free, gov\_bulletin, `en`) — `https://www.ispr.gov.pk`
   - Pakistan Ministry of Foreign Affairs (free, gov\_bulletin, `en`) — `https://mofa.gov.pk`
   - Reuters Diplomatic Coverage (free, news\_outlet, `en`) — `https://www.reuters.com`

=== Horizon 1w

1. *Bandar Abbas IRGC Naval Base Berthing Density via Satellite* — `satellite` · novelty 0.40

   _Interpretation._  Increased vessel density at IRGC naval facilities (Bandar Abbas, Bandar Jask) signals Iran sustaining or reinforcing Hormuz closure posture and preparing for extended maritime confrontation. Decreased vessel density or return to pre-crisis baseline signals Iran reducing naval posture, potential precursor to Hormuz reopening. FALSE-SIGNAL TRAP: Vessel count changes could reflect maintenance cycles, weather sheltering, or routine rotation rather than operational posture shifts; IRGC may disperse vessels to smaller bases to reduce satellite-detectable concentration while maintaining operational capability.

   _Monitoring._  Acquire Sentinel-2 (10m, 5-day revisit) and Planet Labs (3m, daily) imagery of Bandar Abbas IRGC naval pier areas (27.18°N, 56.23°E) and Bandar Jask (25.64°N, 57.78°E). Count vessels \>15m at IRGC-designated piers vs. pre-crisis baseline (Feb 2026). Threshold: \>20% increase in berthed IRGC vessels sustained over 1 week = reinforcement signal; \>30% decrease = drawdown signal. Cross-check vessel count trends against AIS data for IRGC-linked vessels and social media footage of base activity.

   _Rationale._  Iran's Hormuz closure posture is the most acute flashpoint; IRGC naval base activity is the most direct physical indicator of whether Iran is sustaining or reducing its maritime enforcement capability over a weekly horizon, complementing the 24h sortie-count signal with structural force-posture data.

   _Sources:_
   - Sentinel Hub (Copernicus) (freemium, satcom, `multi`) — `https://www.sentinel-hub.com`
   - Planet Labs (paid, satcom, `en`) — `https://www.planet.com`
   - Maxar SecureWatch (paid, satcom, `en`) — `https://www.maxar.com`
   - Google Earth (historical baseline) (free, satcom, `multi`) — `https://earth.google.com`

2. *Iranian National Internet Throttling and Shutdown Events* — `cyber` · novelty 0.30

   _Interpretation._  Increased throttling or full shutdown events (especially mobile networks, Instagram/WhatsApp blocking) signals IRGC preparing for or responding to internal unrest and regime insecurity about post-Khamenei legitimacy. Stable or improved connectivity signals the internal situation is manageable and IRGC does not anticipate large-scale unrest. FALSE-SIGNAL TRAP: Iran routinely throttles internet during national exams, religious observances, or infrastructure maintenance; targeted local shutdowns (e.g., Sistan-Baluchestan) may not indicate national-level unrest; connectivity improvements could indicate IRGC confidence in control rather than genuine stability.

   _Monitoring._  Monitor NetBlocks and IODA for real-time Iranian internet connectivity disruptions. Track AS58224 (Telecommunication Infrastructure Company) metrics at national and per-province level. Differentiate national-level shutdowns from provincial/local disruptions. Threshold: National-level connectivity drop \>20% sustained \>6h = meaningful unrest signal; 3+ provincial disruptions in 1 week = localized unrest spreading; no disruptions for 7+ days = regime confidence signal. Cross-check with Persian-language diaspora media (Iran International) for protest reports and with ICJ filing activity mentioned in SITREP.

   _Rationale._  Khamenei's death and infrastructure strikes have created conditions for internal unrest per SITREP; internet shutdown patterns are the most reliable OSINT proxy for IRGC perception of internal threat, which could alter Iran's negotiating posture or disrupt IRGC command coherence—both load-bearing uncertainties.

   _Sources:_
   - NetBlocks (free, dashboard, `en`) — `https://netblocks.org`
   - IODA (CAIDA/Georgia Tech) (free, dashboard, `en`) — `https://ioda.caida.org`
   - OONI Explorer (free, dashboard, `multi`) — `https://ooni.org`
   - Iran International (free, news\_outlet, `fa`) — `https://www.iranintl.com`

3. *Hezbollah Martyrdom and Operational Notice Frequency on Al-Manar and Affiliated Media* — `social` · novelty 0.60

   _Interpretation._  Increased martyrdom notices (especially for combatants in southern Lebanon rather than Syria) and operational readiness statements signal Hezbollah preparing public opinion for escalation and signaling intent to move beyond IED incidents. Stable or declining notices with focus on political/diplomatic messaging signals Hezbollah maintaining current posture. FALSE-SIGNAL TRAP: Martyrdom notices may increase due to Israeli strikes killing operatives (reactive) rather than Hezbollah-initiated escalation; Hezbollah may suppress notices during OPSEC periods before a planned offensive, making decreased notices ambiguous—quiet could mean preparation rather than de-escalation.

   _Monitoring._  Monitor Al-Manar TV website and Hezbollah media unit Telegram channels for martyrdom notices, operational statements, and Nasrallah/Qassem speech frequency. Categorize notices: south Lebanon operatives vs. Syria vs. other; combat vs. accidental deaths. Track Nasrallah speech frequency and rhetoric intensity (coded language for operations). Threshold: \>5 south Lebanon martyrdom notices in 1 week (vs. baseline of 1-2) = escalation signal; Nasrallah speech with explicit 'open front' language = critical; shift to purely political messaging = de-escalation. Cross-check against IDF Northern Command statements and UNIFIL incident reports to verify whether increased notices correspond to actual kinetic events or are preparatory propaganda.

   _Rationale._  Hezbollah retains significant military capabilities including long-range missiles per SITREP; the transition from isolated IED incidents to coordinated offensive would open a second major front, and Hezbollah's own media ecosystem is the most direct window into their escalation intent beyond what IDF or UNIFIL reporting can capture.

   _Sources:_
   - Al-Manar TV (free, news\_outlet, `ar`) — `https://www.almanar.com.lb`
   - ACLED Lebanon Conflict Data (freemium, academic, `en`) — `https://acleddata.com`
   - UNIFIL Daily Briefings (free, gov\_bulletin, `en`) — `https://unifil.unmissions.org`
   - The Cradle (Hezbollah-aligned analysis) (free, news\_outlet, `ar`) — `https://thecradle.co`

4. *VLCC Cape of Good Hope Re-routing Volume from Persian Gulf Routes* — `maritime` · novelty 0.70

   _Interpretation._  Increasing VLCC re-routing around Cape of Good Hope (vs. Hormuz/Suez) signals the shipping market pricing sustained Hormuz closure; charterers and owners making structural decisions implying weeks-long disruption expectation. Stable or decreasing Cape re-routing with return to Hormuz routes signals market confidence in reopening. FALSE-SIGNAL TRAP: Some Cape re-routing may be driven by Suez Canal constraints, Red Sea Houthi threat, or charterer cost optimization rather than Hormuz-specific risk; VLCCs take ~6 weeks for Cape vs. ~2 weeks for Suez, so re-routing decisions lag current conditions and may reflect risk-aversion from the initial closure rather than current expectations.

   _Monitoring._  Track VLCC vessel counts on Cape of Good Hope route vs. Hormuz/Suez route via AIS. Monitor TankerTrackers weekly re-routing tallies and freight rate differentials. Track VLCC spot rates for Middle East-Asia routes (Hormuz-dependent) vs. West Africa-Asia (Hormuz-independent). Threshold: \>30% of Middle East-origin VLCCs re-routing via Cape sustained for 1 week = structural market expectation of prolonged closure; return of \>50% of VLCCs to Hormuz transit = meaningful de-escalation. Cross-check against Brent M1-M3 spread (24h signal) and physical Saudi/Russian Pacific-route volumes to isolate Hormuz-specific vs. broader factors.

   _Rationale._  Strait of Hormuz closure is the most acute flashpoint; VLCC re-routing is a structural market signal that captures whether the shipping industry expects prolonged disruption, which is a more honest indicator than diplomatic rhetoric about ceasefire terms and directly bears on whether the maritime confrontation is becoming the new normal.

   _Sources:_
   - TankerTrackers (freemium, social, `en`) — `https://tankertrackers.com`
   - MarineTraffic (VLCC route filtering) (freemium, ais\_shipping, `multi`) — `https://www.marinetraffic.com`
   - Clarksons Shipping Intelligence Network (paid, market\_data, `en`) — `https://www.clarksons.net`
   - Baltic Exchange (paid, market\_data, `en`) — `https://www.balticexchange.com`

5. *Omani Foreign Ministry Public Engagement Cadence on Iran-US Track* — `diplomatic` · novelty 0.60

   _Interpretation._  Increased Omani FM public statements, meetings with Iranian/US officials, or Muscat-hosted delegations signals Oman activating backchannel mediation—potential breakthrough or crisis management. Decreased Omani engagement or public silence on the Iran-US file signals the backchannel is dormant, with diplomacy shifted to Egypt/Pakistan exclusively or talks stalled beyond Omani rescue. FALSE-SIGNAL TRAP: Oman routinely mediates and may issue statements as part of ongoing process without indicating progress; Oman may go quiet during the most sensitive backchannel negotiations, making silence ambiguous (could mean intense secret talks OR abandonment of the channel).

   _Monitoring._  Monitor Omani MFA statements, ministerial travel announcements, and Oman News Agency (ONA) for references to Iran, US, mediation, or hosting delegations. Track Omani FM travel to Tehran, Washington, or neutral venues. Threshold: Omani FM meeting with Iranian or US counterpart + public statement referencing 'progress' or 'framework' = meaningful backchannel signal; 1 week with no Omani engagement on Iran-US file after previously active = backchannel stall. Cross-check against Egypt/Pakistan mediator signals (24h signal \#5); if Oman goes quiet while Egypt/Pakistan increase activity, this suggests channel shift rather than diplomatic collapse; if all three go quiet simultaneously, that is a stronger stall signal.

   _Rationale._  Oman has historically been the most consistent backchannel mediator between the US and Iran (JCPOA precursor talks, 2023 prisoner swap); its absence from the current SITREP's named mediators (Egypt/Pakistan) is itself notable, making any Omani engagement a high-signal indicator of whether the diplomatic track has viable backchannel prospects beyond the public channel.

   _Sources:_
   - Oman News Agency (ONA) (free, gov\_bulletin, `ar`) — `https://www.omannews.gov.om`
   - Omani Ministry of Foreign Affairs (free, gov\_bulletin, `ar`) — `https://mfa.gov.om`
   - Reuters Gulf/Diplomatic Coverage (free, news\_outlet, `en`) — `https://www.reuters.com`
   - Middle East Eye (free, news\_outlet, `en`) — `https://www.middleeasteye.net`

== Council\_Member\_DeepSeek (deepseek/deepseek-v3.2)
_Notes._  Signals are selected to directly inform the load-bearing uncertainties, focusing on observable, open-source events and indicators. The monitoring strategies prioritize actionable thresholds and cross-referencing to mitigate disinformation. Novelty scores reflect a mix of standard diplomatic/military monitoring and more creative use of composite or niche data sources.

=== Horizon 24h

1. *AIS anomalies (NUC/RAM/distress) in Strait of Hormuz* — `maritime` · novelty 0.25

   _Interpretation._  An increase in the number of vessels broadcasting 'Not Under Command' (NUC), 'Restricted Maneuverability' (RAM), or distress signals via AIS within the Strait of Hormuz or adjacent waters would signal active harassment or attacks on shipping is intensifying. A return to normal traffic with no such signals would suggest a lull in IRGC naval activity, possibly for diplomatic reasons. A false signal could be a cluster of vessels turning off AIS for sanctions evasion (common with Iranian tankers) rather than due to coercion.

   _Monitoring._  Use the MarineTraffic Live Map with a geo-fence around the Strait of Hormuz (approx. 25-27N, 56-57E). Filter AIS data for vessels with special status codes (NUC, RAM) or those that suddenly stop transmitting. Monitor in near real-time, with meaningful movement defined as \>3 such incidents within a 12-hour period. Cross-check with alerts from the UK Maritime Trade Operations (UKMTO) and the U.S. Navy's Fifth Fleet/NAVCENT public statements.

   _Rationale._  The Strait of Hormuz closure is the most acute flashpoint. Real-time AIS anomalies are the most direct open-source indicator of incidents at sea, providing immediate warning of escalation or de-escalation.

   _Sources:_
   - MarineTraffic Live Map (freemium, dashboard, `en`) — `https://www.marinetraffic.com/en/ais/home`
   - UK Maritime Trade Operations (UKMTO) Advisory Notices (free, gov\_bulletin, `en`) — `https://www.ukmto.org/`
   - U.S. Naval Forces Central Command (NAVCENT) News (free, gov\_bulletin, `en`) — `https://www.navy.mil/NAVCENT/`
   - Windward Maritime AI Platform (paid, dashboard, `en`) — `https://windward.ai/`

2. *IDF announcements of senior Hezbollah commander targeted killings* — `military` · novelty 0.20

   _Interpretation._  A formal, on-record statement from the IDF Spokesperson or Israeli PMO confirming a targeted killing of a senior Hezbollah commander (e.g., Jihad Mughniyeh-level) in Lebanon would signal a major Israeli escalation beyond retaliatory strikes on operatives, likely collapsing the Lebanon ceasefire. The absence of such announcements, despite continued lower-level clashes, would indicate Israel is adhering to the ceasefire's self-defense provisions. A false signal could be social media rumors of a senior figure's death that are not confirmed by official Israeli or Hezbollah channels for 6+ hours.

   _Monitoring._  Monitor the official Twitter/X account of the IDF Spokesperson (\@IDF) and the Israel Prime Minister's Office website for press releases in Hebrew and English. A meaningful movement is a clear, attributed statement naming a specific high-value Hezbollah military or security official. Cross-check with Hezbollah's own media arm (Al-Manar) for confirmation or denial, and with major wire services (Reuters, AP) which would have their own sourcing.

   _Rationale._  Following the first post-ceasefire IDF strikes and the killing of an IDF reservist, the next major escalation on the Lebanon front would likely be a high-value targeted assassination, which would severely test the fragile ceasefire.

   _Sources:_
   - IDF Spokesperson (Twitter) (free, social, `en, he`) — `https://twitter.com/IDF`
   - Prime Minister's Office of Israel (free, gov\_bulletin, `he, en`) — `https://www.gov.il/en/departments/prime\_ministers\_office`
   - Al-Manar TV Website (free, news\_outlet, `ar, en`) — `https://english.almanar.com.lb/`
   - Reuters Israel-Lebanon Wire (free, news\_outlet, `en`) — `https://www.reuters.com/world/middle-east/`

3. *Tehran Stock Exchange (TSE) daily trading volume & price spike* — `economic` · novelty 0.70

   _Interpretation._  A spike in the daily trading volume of the Tehran Stock Exchange (TSE) Total Index, particularly if coupled with a sharp price move (\>5%), could signal either panic selling by domestic investors fearing escalation or a coordinated effort by state-backed actors to stabilize the market ahead of anticipated unrest. A flat, low-volume market would suggest capital controls are effective or that the public is in a 'wait-and-see' mode. A false signal could be a technical glitch or a single large block trade in a state-owned company that distorts the index.

   _Monitoring._  Monitor the TSE Total Index (TEDPIX) data on the TSE website or via financial data aggregators like TradingView. Check at market close (Tehran time, ~12:30 UTC). A meaningful movement is a daily volume increase of \>30% over the 5-day average AND an absolute index move of \>±3%. Cross-check with analysis from financial news outlets covering Iran (e.g., Bourse & Bazaar) for context on specific sector moves and potential government intervention rumors.

   _Rationale._  The Iranian stock market is a sensitive, albeit manipulated, barometer of domestic economic anxiety and regime stability efforts. A sharp move in the next 24h could provide early warning of the internal unrest forecast in the SITREP or of regime preparations for it.

   _Sources:_
   - Tehran Stock Exchange (TSE) Market Watch (free, market\_data, `fa`) — `http://www.tsetmc.com/Loader.aspx?ParTree=15131F`
   - TradingView - TEDPIX Chart (free, market\_data, `en`) — `https://www.tradingview.com/symbols/TEDPIX/`
   - Bourse & Bazaar (free, news\_outlet, `en`) — `https://www.bourseandbazaar.com/`
   - Bloomberg Terminal (Ticker: TEDPUSD Index) (paid, market\_data, `en`) — `https://www.bloomberg.com/professional`

4. *Military aircraft/drone tracks from Iran heading west via ADS-B* — `air` · novelty 0.55

   _Interpretation._  An increase in the number of flight tracks from Iranian soil (especially from known IRGC/IRIAF bases like Bandar Abbas, Shiraz) heading west over Iraq/Syria toward Israel/Lebanon, as detected by ADS-B/Mode-S, would signal a potential drone or missile launch campaign is imminent or underway. A decrease to normal civilian traffic levels would suggest no immediate aerial escalation. A false signal could be a civilian airliner flying a normal route, or military aircraft with transponders on for a training exercise unrelated to the conflict.

   _Monitoring._  Use ADS-B Exchange's military filter and FR24's playback feature to monitor air traffic originating from Iran. Focus on aircraft squawking non-commercial codes (e.g., MIL codes) or showing erratic flight paths (e.g., circling in launch areas). A meaningful movement is \>3 distinct military-type tracks heading on a westerly vector from Iranian bases within a 6-hour period. Cross-check with reports of air raid sirens in Israel or northern Iraq from local social media and news.

   _Rationale._  Iran has previously launched drones and missiles directly at Israel. Real-time flight tracking provides a crucial 1-2 hour warning window for such attacks, which would constitute a major breach of the ceasefire and trigger massive retaliation.

   _Sources:_
   - ADS-B Exchange Military Filter (free, dashboard, `en`) — `https://globe.adsbexchange.com/?showMil=1`
   - Flightradar24 Playback & Alerts (freemium, dashboard, `en`) — `https://www.flightradar24.com/`
   - IL Red Alert (Twitter Bot) (free, social, `en, he`) — `https://twitter.com/ILRedAlert`
   - Syrian Observatory for Human Rights (SOHR) Telegram (free, social, `ar`) — `https://t.me/SyriaOHR`

5. *Coordinated Egypt-Pakistan FM statements on US-Iran talks progress* — `diplomatic` · novelty 0.25

   _Interpretation._  A joint press conference or simultaneous statements from the Egyptian and Pakistani Foreign Ministers announcing a agreed-upon text or a date for the next round of US-Iran talks would signal tangible diplomatic progress, potentially offsetting the Hormuz tension. Contradictory statements from the two mediators, or a clear downplaying of progress by either side, would signal the diplomatic track is stalling. A false signal could be a vague, optimistic statement from one mediator that is not corroborated by the other or by the principals.

   _Monitoring._  Monitor the official websites and social media accounts of the Egyptian Ministry of Foreign Affairs and Pakistan's Ministry of Foreign Affairs. Also watch the Twitter/X accounts of their respective Foreign Ministers. A meaningful movement is a coordinated release (within 1-2 hours) of statements explicitly referencing a 'draft agreement,' 'final text,' or a confirmed meeting date. Cross-check with the US State Department daily press briefing for confirmation.

   _Rationale._  Egypt and Pakistan are the key mediators working on a 'final agreement.' Their coordinated public messaging is a high-reliability, short-term indicator of whether the diplomatic track is moving forward or breaking down.

   _Sources:_
   - Egypt Ministry of Foreign Affairs (free, gov\_bulletin, `ar, en`) — `https://www.mfa.gov.eg/`
   - Pakistan Ministry of Foreign Affairs (free, gov\_bulletin, `en, ur`) — `https://mofa.gov.pk/`
   - U.S. Department of State Daily Press Briefing (Transcripts) (free, gov\_bulletin, `en`) — `https://www.state.gov/briefings/department-press-briefing/`
   - Al Jazeera English - Live Blog (free, news\_outlet, `en`) — `https://www.aljazeera.com/news/liveblog/`

=== Horizon 1w

1. *Formal US diplomatic request for ceasefire extension* — `diplomatic` · novelty 0.15

   _Interpretation._  A formal, public request from the US State Department or White House to extend the April 8 ceasefire would signal a commitment to maintain the diplomatic track despite the Hormuz closure, buying time for talks. The absence of such a request by the end of the 1-week horizon would indicate the US is prepared to let the informal ceasefire lapse, accepting a return to open conflict. A false signal could be a vague, leaked State Department memo about 'exploring options' that is not followed by a formal diplomatic démarche.

   _Monitoring._  Monitor official US government websites (State.gov, WhiteHouse.gov) and verified social media accounts of the Secretary of State, National Security Advisor, and US Mission to the UN for press releases, statements, or briefings. A 'meaningful movement' is a clear, on-record statement from a senior official (e.g., Spokesperson Miller) confirming a formal request has been delivered to relevant parties via diplomatic channels. Cross-check with reporting from major wire services (Reuters, AP) and statements from mediator nations (Egypt, Pakistan).

   _Rationale._  The SITREP notes the US had not formally requested a ceasefire extension as of April 16; this diplomatic action is a critical pivot point for the survival of the entire ceasefire framework and the trajectory of US-Iran talks.

   _Sources:_
   - U.S. Department of State - Press Releases (free, gov\_bulletin, `en`) — `https://www.state.gov/press-releases/`
   - The White House - Briefing Room (free, gov\_bulletin, `en`) — `https://www.whitehouse.gov/briefing-room/`
   - Reuters - Diplomatic News Wire (free, news\_outlet, `en`) — `https://www.reuters.com/world/`
   - Associated Press (AP) Wire (free, news\_outlet, `multi`) — `https://apnews.com/hub/world-news`

2. *Commercial tanker loitering/diverting patterns outside Strait of Hormuz* — `maritime` · novelty 0.60

   _Interpretation._  A sustained, multi-day increase in the volume of vessels (tankers, bulk carriers) loitering outside the Strait of Hormuz or diverting via the Cape of Good Hope indicates commercial actors are pricing in a prolonged closure, undermining economic pressure on Iran. A decrease back to normal routing would signal that shipping companies assess the closure as temporary or ineffective. A false signal could be a temporary clustering due to unrelated port congestion or weather, not a strategic diversion.

   _Monitoring._  Use MarineTraffic or VesselFinder dashboards to track live AIS positions of Very Large Crude Carriers (VLCCs) and other large commercial vessels in the Arabian Sea, Gulf of Oman, and southern Red Sea. Set a geo-fenced area. Count vessels showing 'Stopped' or 'Moored' status outside anchorages for \>24h, or those whose destination field changes to a port requiring Cape routing. A meaningful movement is a week-over-week increase of \>15% in such vessels. Cross-check with Lloyd's List Intelligence reports on tanker freight rates for Middle East routes.

   _Rationale._  Commercial shipping behavior is a real-time, aggregated market assessment of the Strait's closure risk. Persistent diversion would signal a major, lasting disruption to global energy flows, increasing economic stakes for all parties.

   _Sources:_
   - MarineTraffic Live Map (freemium, dashboard, `en`) — `https://www.marinetraffic.com/en/ais/home`
   - Lloyd's List Intelligence (paid, market\_data, `en`) — `https://lloydslist.maritimeintelligence.informa.com/llint`
   - VesselFinder (freemium, dashboard, `en`) — `https://www.vesselfinder.com`
   - TankerTrackers.com (paid, other, `en`) — `https://www.tankertrackers.com`

3. *CISA/NCSC ICS-SCADA security advisories citing Iranian actors* — `cyber` · novelty 0.30

   _Interpretation._  An increase in the number and severity of ICS/SCADA security advisories from CISA and international CERTs regarding Iranian-linked activity, especially targeting water, energy, or transportation in NATO countries, signals cyber escalation exploiting the kinetic pause. A decrease or absence of new advisories suggests cyber actors are adhering to an unspoken ceasefire or are re-tooling. A false signal could be the re-publication of old TTPs without new victimology or a spike in low-skill hacktivist defacements that lack strategic impact.

   _Monitoring._  Monitor the CISA Alerts & Advisories RSS feed and the \@CISAgov Twitter account for new publications mentioning Iran, APT33, APT34, or CyberAv3ngers. Also check the UK NCSC and EU CERT-EU feeds. A meaningful movement is the issuance of a new, detailed advisory (AA22-xxx or similar) with technical indicators and victim sectors beyond previous reporting. Cross-check with corroborating analysis from private cybersecurity firms like Mandiant or CrowdStrike via their blogs.

   _Rationale._  The SITREP highlights cyber as an unaddressed escalation vector. Official advisories are a high-confidence, publicly observable indicator of state-linked cyber activity moving from espionage to potential disruptive attacks.

   _Sources:_
   - CISA Alerts and Advisories (RSS) (free, rss, `en`) — `https://www.cisa.gov/news-events/cybersecurity-advisories/feed`
   - UK NCSC Advisories (free, gov\_bulletin, `en`) — `https://www.ncsc.gov.uk/section/advice-guidance/all-advisories`
   - Mandiant (Google Cloud) Threat Intelligence Blog (free, other, `en`) — `https://cloud.google.com/blog/topics/threat-intelligence`
   - CrowdStrike Blog (free, other, `en`) — `https://www.crowdstrike.com/blog/`

4. *Volume/geographic spread of Persian-language protest videos on social media* — `social` · novelty 0.40

   _Interpretation._  A surge in geolocated video posts from multiple Iranian cities showing large, sustained crowds (\>10k) and direct anti-government or anti-war chants would signal the internal unrest forecast in the SITREP is materializing, potentially pressuring the regime. A decline in such content, especially if coupled with reports of nationwide internet throttling/shutdowns from NetBlocks, would signal a regime crackdown is in effect. A false signal could be a viral but isolated protest from a specific group (e.g., bazaar merchants) that does not generalize, or old footage recirculated.

   _Monitoring._  Monitor the Twitter/X accounts of reliable Persian-language citizen journalists and researchers (e.g., \@1500tasvir\_en, \@IranIntl) for video content. Use hashtag tracking (\#اعتراضات, \#ایران). Look for multiple, independent videos from different cities timestamped within the same 24-48h period. A meaningful movement is \>50 distinct, geolocated protest videos from \>=5 major cities over a week. Cross-check with NetBlocks data on internet disruptions and Reuters/AP text reports.

   _Rationale._  Internal Iranian unrest is a key uncertainty that could disrupt IRGC coherence and alter Iran's negotiating posture. Social media is the primary real-time vector for observing such events given state media blackouts.

   _Sources:_
   - 1500tasvir (English) (free, social, `fa, en`) — `https://twitter.com/1500tasvir\_en`
   - Iran International (English) (free, news\_outlet, `en`) — `https://www.iranintl.com/`
   - NetBlocks Real-time Network Data (free, dashboard, `en`) — `https://netblocks.org/reports`
   - Radio Farda (free, news\_outlet, `fa, en`) — `https://www.radiofarda.com/`

5. *French naval deployment announcements to Eastern Mediterranean* — `military` · novelty 0.50

   _Interpretation._  An official, public statement from the French Ministry of Armed Forces or Élysée Palace announcing the deployment of additional naval assets (e.g., a frigate, aircraft carrier group) to the Eastern Mediterranean or off Lebanon would signal a tangible European military response to the UNIFIL killing, raising the stakes. A statement reaffirming commitment to UNIFIL but announcing no new deployments would signal a desire to contain the incident. A false signal could be the routine, pre-scheduled rotation of a French vessel already in the region, misreported as a new deployment.

   _Monitoring._  Monitor the French Ministry of Armed Forces press release page and the Twitter/X account of the French Navy (\@MarineNationale). Also track the Élysée Palace statements. A meaningful movement is a press release explicitly linking a new deployment decision to the security of UNIFIL or stability in Lebanon. Cross-check with shipping data (MarineTraffic ADS-B for military transponders) and reporting from French outlets like Le Monde.

   _Rationale._  Macron has directly blamed Hezbollah for the French peacekeeper's death. A European military reinforcement would be a major development, potentially drawing a NATO member more directly into the Lebanon front and altering Hezbollah's risk calculus.

   _Sources:_
   - Ministère des Armées - Actualités (free, gov\_bulletin, `fr`) — `https://www.defense.gouv.fr/actualites`
   - Marine nationale (Twitter) (free, social, `fr, en`) — `https://twitter.com/MarineNationale`
   - Élysée - Déclarations (free, gov\_bulletin, `fr`) — `https://www.elysee.fr/declarations`
   - Janes Defence News (registration, news\_outlet, `en`) — `https://www.janes.com/defence-news`

== Council\_Member\_Gemini (google/gemini-3-flash-preview)
_Notes._  The 24h horizon focuses on immediate kinetic triggers and tactical positioning in the Strait of Hormuz, while the 1w horizon shifts toward the sustainability of the Iranian regime and the potential for a 'shadow war' escalation via cyber and regional proxy movements.

=== Horizon 24h

1. *CentCom/NAVCENT 'Notice to Mariners' (NOTAM) and IMSC advisories* — `maritime` · novelty 0.30

   _Interpretation._  Increased frequency of 'Security Threats' or 'Harassment' alerts indicates a transition from symbolic blockade to active kinetic engagement (boarding/seizure). Decreased alerts suggest a quiet de-escalation or a tactical pause for negotiations. Trap: A lack of alerts could simply mean commercial traffic has completely ceased (self-sanctioning), masking continued IRGC presence.

   _Monitoring._  Scrape NAVCENT and UKMTO RSS feeds every 2 hours. A 'meaningful movement' is 3+ reported incidents within a 12-hour window.

   _Rationale._  Directly monitors the most acute flashpoint mentioned in the SITREP: the closure of the Strait of Hormuz and the US counter-blockade.

   _Sources:_
   - United Kingdom Maritime Trade Operations (UKMTO) (free, gov\_bulletin, `en`) — `https://www.ukmto.org`
   - U.S. Naval Forces Central Command News (free, gov\_bulletin, `en`) — `https://www.cusnc.navy.mil`

2. *Flight tracking of 'Glow' and 'Bolt' callsigns (USAF/USN ISR) over Lebanon/Syria* — `air` · novelty 0.50

   _Interpretation._  High-density orbits of RC-135 or MQ-9 platforms over the 'Yellow Line' suggest imminent IDF strikes or expected Hezbollah retaliation. Withdrawal of ISR suggests a return to ceasefire monitoring. Trap: Platforms may go 'dark' (ADS-B off) during high-intensity operations, making a 'quiet' sky a false indicator of peace.

   _Monitoring._  Monitor ADS-B Exchange filters for HEX codes associated with 5th Fleet and IAF assets. 4+ hours of continuous orbit in a 10km radius counts as meaningful.

   _Rationale._  Essential for tracking the 'fragile' Lebanon front where the first post-ceasefire strikes have already occurred.

   _Sources:_
   - ADS-B Exchange (free, adsb\_flight, `en`) — `https://adsbexchange.com`
   - Itay Blumental (Military Correspondent) (free, social, `he`) — `https://twitter.com/ItayBlumental`

3. *Shadowserver/NetBlocks 'Network Connectivity' metrics for Tehran/Isfahan* — `cyber` · novelty 0.60

   _Interpretation._  A sharp drop (downward) indicates IRGC-ordered 'kill-switch' maneuvers to preempt or respond to internal unrest following Khamenei's death. Normalization suggests regime confidence. Trap: Partial outages may be caused by Israeli cyberattacks on infrastructure rather than domestic repression.

   _Monitoring._  Check NetBlocks real-time charts and IODA (Internet Outage Detection and Analysis) every 4 hours. A 20% drop in BGP announcements is a critical signal.

   _Rationale._  Directly addresses the load-bearing uncertainty regarding internal Iranian unrest and IRGC command coherence.

   _Sources:_
   - NetBlocks (free, dashboard, `en`) — `https://netblocks.org`
   - IODA (Internet Outage Detection and Analysis) (free, dashboard, `en`) — `https://ioda.inet.tu-berlin.de`

4. *US-Israel 'Yellow Line' terminology in Hebrew-language military briefings* — `military` · novelty 0.70

   _Interpretation._  Expansion of the 'Yellow Line' definition to include 'free-fire zones' indicates a shift to a permanent buffer zone (Gaza model). Retraction or lack of mention suggests the line is a temporary tactical posture. Trap: The term may be used psychologically to deter Hezbollah return without actual physical enforcement.

   _Monitoring._  Daily review of IDF Spokesperson (Daniel Hagari) briefings and Hebrew military analysts on Telegram. Look for the specific phrase 'Kav Tzahov' (Yellow Line).

   _Rationale._  The SITREP notes Israel has established this line; its enforcement determines if the Lebanon ceasefire survives.

   _Sources:_
   - IDF Official Telegram (free, social, `he`) — `https://t.me/idfofficial`
   - Haaretz Military News (registration, news\_outlet, `he`) — `https://www.haaretz.co.il`

5. *Iranian Rial (IRR) / US Dollar (USD) 'Bonbast' open-market rate* — `economic` · novelty 0.40

   _Interpretation._  Rapid depreciation (upward IRR/USD) indicates public panic over the 'fragile limbo' and potential for new strikes. Stability suggests the 'Pakistan talks' are being priced in as a success. Trap: The regime often injects hard currency to artificially stabilize the rate during crises.

   _Monitoring._  Monitor Bonbast.com every 6 hours. A move of \>5% in 24h is a 'panic' signal.

   _Rationale._  Economic sentiment is the most sensitive proxy for the Iranian public's belief in the regime's survival post-Khamenei.

   _Sources:_
   - Bonbast (free, market\_data, `en`) — `https://www.bonbast.com`

=== Horizon 1w

1. *Sentinel-2/Planet imagery of IRGC 'Fast-Attack Craft' (FAC) piers at Bandar Abbas* — `satellite` · novelty 0.60

   _Interpretation._  Empty piers (upward deployment) indicate a sustained maritime guerrilla campaign. High pier occupancy indicates the 'Hormuz closure' is more rhetorical or being used as a bargaining chip. Trap: Boats can be moved to camouflaged coastal caves/tunnels not visible to standard EO satellites.

   _Monitoring._  Weekly comparison of high-res imagery (3-5m) focusing on IRGC Navy bases. 50%+ change in vessel count is the threshold.

   _Rationale._  Monitors the physical reality of Iran's threat to the Strait of Hormuz over a week-long window.

   _Sources:_
   - Sentinel Hub EO Browser (free, satcom, `multi`) — `https://apps.sentinel-hub.com/eo-browser/`
   - Planet Labs (SkySat) (paid, satcom, `en`) — `https://www.planet.com`

2. *CISA/FBI 'Flash Alerts' for Unit 702/CyberAv3ngers activity* — `cyber` · novelty 0.50

   _Interpretation._  A surge in alerts targeting US/EU water/energy sectors indicates Iran is using 'non-kinetic' escalation to bypass ceasefire terms. A lull suggests the 'Pakistan talks' include a quiet cyber-truce. Trap: CyberAv3ngers may be 'patriotic' hackers acting without IRGC orders, creating a false attribution.

   _Monitoring._  Weekly review of CISA's 'Known Exploited Vulnerabilities' catalog and FBI Private Industry Notifications (PINs).

   _Rationale._  Directly addresses the SITREP's note that the ceasefire framework ignores cyber operations.

   _Sources:_
   - CISA Alerts (free, gov\_bulletin, `en`) — `https://www.cisa.gov/news-events/alerts`
   - Mandiant (Google Cloud) Intelligence (freemium, other, `en`) — `https://www.mandiant.com/resources`

3. *Pakistan Ministry of Foreign Affairs (MOFA) 'Joint Statements' with Saudi/UAE* — `diplomatic` · novelty 0.40

   _Interpretation._  Statements mentioning 'regional stability' and 'maritime security' indicate the Pakistan-led mediation is gaining Gulf buy-in. Silence or 'unilateral' visits suggest the Pakistan track is failing. Trap: Pakistan may issue optimistic statements to bolster its own diplomatic prestige despite no actual progress.

   _Monitoring._  Daily check of MOFA Pakistan press releases. Cross-reference with SPA (Saudi Press Agency) for alignment.

   _Rationale._  Pakistan is the primary mediator; their ability to bridge the US-Iran gap is the only current path to a binding agreement.

   _Sources:_
   - Ministry of Foreign Affairs Pakistan (free, gov\_bulletin, `en`) — `https://mofa.gov.pk`
   - Saudi Press Agency (SPA) (free, news\_outlet, `en`) — `https://www.spa.gov.sa`

4. *Hezbollah 'Martyr' funeral announcements in Southern Lebanon (via Al-Manar)* — `social` · novelty 0.80

   _Interpretation._  An uptick in funerals without corresponding IDF strike reports suggests Hezbollah is suffering 'accidental' casualties while preparing IEDs/missiles (indicating escalation). A decrease suggests adherence to the ceasefire. Trap: Hezbollah may delay funeral announcements to hide casualty counts from Israeli intelligence.

   _Monitoring._  Daily scan of Al-Manar (Arabic version) and Hezbollah-affiliated Telegram channels (e.g., 'Lebanon News').

   _Rationale._  High-confidence indicator of ground-level friction in Lebanon that could trigger a broader breakdown.

   _Sources:_
   - Al-Manar TV News (free, news\_outlet, `ar`) — `https://www.almanar.com.lb`
   - War Monit (Telegram) (free, social, `multi`) — `https://t.me/warmonit`

5. *WTI/Brent Crude 'Time Spreads' (Front-month vs 3-month)* — `energy` · novelty 0.50

   _Interpretation._  Widening 'backwardation' (front-month much higher) indicates the market is pricing in a physical disruption of Hormuz. 'Contango' or flat spreads suggest the market believes Trump's 'talks are going well' rhetoric. Trap: Strategic Petroleum Reserve (SPR) releases by the US can artificially suppress front-month prices, masking the risk.

   _Monitoring._  Daily check of CME Group or ICE futures curves. A spread widening of \>\$1.00/bbl in a week is a high-alert signal.

   _Rationale._  The global market's 'skin in the game' is a more objective measure of the Hormuz threat than political rhetoric.

   _Sources:_
   - CME Group Energy Products (freemium, market\_data, `en`) — `https://www.cmegroup.com`
   - OilPrice.com Intelligence (free, news\_outlet, `en`) — `https://oilprice.com`

== Council\_Member\_Claude (anthropic/claude-sonnet-4.6)
_Notes._  Several caveats apply to this signal set. First, the scenario involves active information warfare by all parties; Iranian state media, Israeli military spokespeople, and US government statements are all subject to deliberate manipulation and should never be treated as primary evidence without corroboration. Second, the AIS/ADSB maritime signals are particularly vulnerable to spoofing and jamming in the Hormuz theater; SAR satellite cross-checks are essential before drawing conclusions from vessel tracking data alone. Third, the internal Iran signals (internet shutdowns, Telegram sentiment) are subject to significant collection gaps due to Iranian censorship infrastructure; absence of signal should be treated as 'unknown' rather than 'no event.' Fourth, the 24h and 1w horizons are not cleanly separable in a fast-moving conflict; analysts should treat the 24h signals as requiring continuous monitoring rather than single-point checks. Finally, this panel note: the scenario stipulates Khamenei's death as background context — this is an extraordinary structural variable that makes all Iranian political signals less reliable than in a normal crisis, because the succession dynamics are opaque and the new decision-making hierarchy is not yet legible to open-source analysis.

=== Horizon 24h

1. *IRGC gunboat sortie frequency and geographic pattern in Strait of Hormuz AIS/ADSB gap zones* — `maritime` · novelty 0.55

   _Interpretation._  Increased IRGC fast-boat activity, especially north of the median line or in the TSS (Traffic Separation Scheme) lanes, signals Iran is actively enforcing the closure and escalation risk is high. Decreased sortie tempo or withdrawal to anchorage positions near Bandar Abbas suggests Iran may be signaling a willingness to de-escalate or allow selective passage. False-signal trap: AIS gaps caused by Iranian jamming or spoofing may be misread as vessel compliance or absence of IRGC presence when the reverse is true; cross-check with Sentinel-1 SAR imagery and MarineTraffic anomaly alerts before concluding.

   _Monitoring._  Pull MarineTraffic and VesselFinder AIS feeds every 2 hours for the Hormuz chokepoint bounding box (55.5–57.5°E, 25.5–27°N). Flag any vessel broadcasting distress (AIS flag 1) or going dark after entering the TSS. Cross-check with Windward or Pole Star commercial maritime intelligence for IRGC patrol vessel tracks. Threshold: three or more commercial vessels going dark or diverting within a 6-hour window constitutes meaningful movement. Corroborate with Lloyd's List Intelligence vessel-status updates.

   _Rationale._  The Hormuz closure is the single most acute kinetic flashpoint in the SITREP; IRGC sortie patterns are the most direct observable indicator of whether Iran is escalating enforcement or creating space for negotiation. AIS gaps are a known Iranian tactic and must be monitored as a primary signal.

   _Sources:_
   - MarineTraffic (freemium, ais\_shipping, `en`) — `https://www.marinetraffic.com`
   - VesselFinder (freemium, ais\_shipping, `en`) — `https://www.vesselfinder.com`
   - Lloyd's List Intelligence (paid, news\_outlet, `en`) — `https://lloydslist.maritimeintelligence.informa.com`
   - Windward Maritime AI (paid, dashboard, `en`) — `https://windward.ai`
   - Copernicus Emergency Management Service (Sentinel-1 SAR) (free, satcom, `en`) — `https://emergency.copernicus.eu`

2. *Iranian state media (IRNA, Press TV, Tasnim) framing of Ghalibaf statements vs. back-channel diplomatic language from Egypt/Pakistan mediators* — `diplomatic` · novelty 0.35

   _Interpretation._  If Iranian state media shifts from maximalist language ('war must fully end') to conditional framing ('pending verification of blockade suspension'), this signals internal authorization for a compromise. If Egyptian or Pakistani foreign ministry readouts use phrases like 'framework agreement' or 'confidence-building measures,' it suggests mediators have a draft text in circulation. Downward movement — hardening language, references to 'resistance' or 'martyrdom,' or silence from Ghalibaf — signals negotiating track is stalling. False-signal trap: Iranian state media is routinely used for domestic audience management and may project hardness even when back-channel progress is real; always triangulate with mediator-side statements.

   _Monitoring._  Monitor IRNA and Tasnim RSS feeds every 30 minutes for keyword clusters: 'blockade,' 'ceasefire,' 'Ghalibaf,' 'Hormuz,' 'agreement.' Simultaneously monitor Egypt's MFA (\@MFA\_Spokesperson on X) and Pakistan's MOFA press releases. Use Google Translate API for Persian-language feeds. Threshold: any shift in conditional language within a 6-hour window warrants escalation to senior analyst. Cross-check with Reuters and AFP wire services for independent confirmation before treating as real.

   _Rationale._  The diplomatic track is the primary mechanism by which the Hormuz closure could be resolved without kinetic escalation; state media framing is the fastest open-source indicator of Iranian leadership's authorized negotiating posture.

   _Sources:_
   - IRNA (Islamic Republic News Agency) (free, gov\_bulletin, `en`) — `https://en.irna.ir`
   - Tasnim News Agency (free, news\_outlet, `en`) — `https://www.tasnimnews.com/en`
   - Egypt Ministry of Foreign Affairs – Official Spokesperson (free, gov\_bulletin, `ar`) — `https://www.mfa.gov.eg`
   - Pakistan Ministry of Foreign Affairs (free, gov\_bulletin, `en`) — `https://mofa.gov.pk`
   - Reuters World News RSS (free, rss, `en`) — `https://feeds.reuters.com/reuters/worldNews`

3. *Brent crude front-month vs. 3-month futures spread (contango/backwardation shift) and tanker freight rates (VLCC Middle East Gulf routes)* — `economic` · novelty 0.40

   _Interpretation._  A sudden spike into steep backwardation (spot premium over forward) combined with a surge in VLCC freight rates on the AG-East route (TD3C) signals markets are pricing in sustained Hormuz disruption and supply shock. A flattening or move toward contango signals markets expect the closure to be short-lived or that alternative routing is absorbing supply. False-signal trap: Saudi Arabia or UAE announcing emergency production increases or strategic reserve releases can suppress spot prices even during genuine closure, masking the severity of disruption.

   _Monitoring._  Check ICE Brent futures term structure on TradingEconomics or Investing.com every 4 hours. Monitor Baltic Exchange VLCC TD3C (AG-Japan) and TD1 (AG-US Gulf) rates daily via Baltic Exchange or Clarksons. Threshold: backwardation exceeding \$3/bbl or VLCC rates rising \>20% within 24 hours constitutes meaningful movement. Cross-check with S&P Global Commodity Insights tanker market commentary.

   _Rationale._  Energy markets are the fastest-reacting open-source signal for how the global financial system is pricing Hormuz disruption severity; divergence between political statements and market pricing reveals which actors have better information.

   _Sources:_
   - ICE Brent Futures (via Investing.com) (freemium, market\_data, `en`) — `https://www.investing.com/commodities/brent-oil`
   - Baltic Exchange (paid, market\_data, `en`) — `https://www.balticexchange.com`
   - S&P Global Commodity Insights (paid, market\_data, `en`) — `https://www.spglobal.com/commodityinsights`
   - TradingEconomics – Crude Oil (freemium, market\_data, `en`) — `https://tradingeconomics.com/commodity/crude-oil`

4. *CyberAv3ngers and IRGC-linked threat actor activity on industrial control system (ICS) honeypots and CISA/sector ISAC advisories* — `cyber` · novelty 0.50

   _Interpretation._  New CISA emergency directives, WaterISAC or E-ISAC bulletins, or credible reporting of CyberAv3ngers claiming successful ICS intrusions within 24 hours signals Iran is using the kinetic pause to open a cyber escalation track — consistent with the SITREP's identification of this as an unaddressed ceasefire vector. Silence or absence of new advisories suggests cyber operations remain at persistent-access/pre-positioning phase rather than destructive execution. False-signal trap: hacktivist groups sympathetic to Iran may claim attacks that are exaggerated or fabricated; always require corroboration from the targeted sector's ISAC or a CISA advisory before treating as state-level action.

   _Monitoring._  Subscribe to CISA Known Exploited Vulnerabilities (KEV) catalog RSS and CISA Alerts RSS; check every 4 hours. Monitor WaterISAC member alerts (registration required) and E-ISAC portal. Track CyberAv3ngers Telegram channel and affiliated handles on X for claimed operations. Use Shodan or Censys to check for new exposure of vulnerable Unitronics PLCs or similar ICS devices (known CyberAv3ngers targets). Threshold: any new CISA emergency directive or sector ISAC bulletin citing Iranian-linked actors within 24 hours.

   _Rationale._  The ceasefire framework explicitly contains no cyber provisions per the SITREP; Iranian cyber actors have both motive and established capability to escalate destructively during kinetic pauses, making 24-hour monitoring of ICS-focused threat activity load-bearing.

   _Sources:_
   - CISA Alerts and Advisories RSS (free, gov\_bulletin, `en`) — `https://www.cisa.gov/news-events/cybersecurity-advisories`
   - WaterISAC (registration, ngo, `en`) — `https://www.waterisac.org`
   - Shodan (freemium, api, `en`) — `https://www.shodan.io`
   - Recorded Future (Insikt Group blog) (freemium, think\_tank, `en`) — `https://www.recordedfuture.com/research`
   - E-ISAC (Electricity ISAC) (registration, ngo, `en`) — `https://www.eisac.com`

5. *Hebrew-language social media (X, Telegram) activity tied to IDF reservist call-up orders and unit-level mobilization chatter* — `social` · novelty 0.45

   _Interpretation._  A surge in Hebrew-language posts referencing 'tzav 8' (emergency call-up orders), specific brigade or division designations being activated, or soldiers posting farewell content signals Israel is preparing for a significant kinetic operation — either in Lebanon or against Iran. Decreased chatter or posts about soldiers returning home signals de-escalation on the Israeli side. False-signal trap: IDF conducts routine readiness exercises that generate similar social signals; cross-check with official IDF Spokesperson statements and whether specific unit types (e.g., naval commandos, air defense) are mentioned, which would indicate operational rather than exercise mobilization.

   _Monitoring._  Monitor Hebrew-language X accounts using TweetDeck or Brandwatch with keyword filters: 'צו 8' (tzav 8), 'גיוס' (mobilization), unit numbers (e.g., '36th Division,' 'Golani'). Monitor key IDF-adjacent Telegram channels (e.g., 'IDF Updates' aggregators). Check IDF Spokesperson (\@IDFSpokesperson) every 2 hours. Threshold: five or more independent accounts referencing the same unit or order type within a 4-hour window. Cross-check against Israeli news outlets (Haaretz, Ynet) for corroboration.

   _Rationale._  Israeli reservist mobilization is the most reliable leading indicator of imminent IDF offensive action; Hebrew social media has historically leaked mobilization signals hours before official announcements, making it a critical 24-hour watch item given IDF's approved operational plans for both Lebanon and Iran contingencies.

   _Sources:_
   - IDF Spokesperson (X / Twitter) (free, social, `en`) — `https://twitter.com/IDFSpokesperson`
   - Haaretz (paid, news\_outlet, `en`) — `https://www.haaretz.com`
   - Ynet News (free, news\_outlet, `en`) — `https://www.ynetnews.com`
   - Brandwatch (social listening) (paid, dashboard, `multi`) — `https://www.brandwatch.com`
   - Telegram (IDF/Israeli military aggregator channels) (free, social, `he`) — `https://telegram.org`

=== Horizon 1w

1. *Satellite imagery (commercial SAR and optical) of Bandar Abbas naval base, IRGC fast-boat staging areas, and Iranian air defense radar sites* — `satellite` · novelty 0.45

   _Interpretation._  Increased vessel density at Bandar Abbas, new fast-boat staging on the northern Hormuz shore, or repositioning of S-300/Bavar-373 radar emitters signals Iran is preparing for sustained enforcement of the Hormuz closure or anticipating US/Israeli strikes. Dispersal of naval assets away from Bandar Abbas into smaller Gulf ports (e.g., Jask, Chabahar) signals Iran is hardening against a decapitation strike on its naval force. False-signal trap: Iran routinely conducts naval exercises that look identical to pre-conflict staging; require corroboration with SIGINT-adjacent open sources (e.g., unusual radar emissions reported by amateur radio monitors) before concluding offensive intent.

   _Monitoring._  Task Planet Labs PlanetScope or Maxar WorldView for daily revisit of Bandar Abbas (56.28°E, 27.18°N) and Jask naval base. Use Sentinel-1 SAR (free, 6-day revisit) for vessel counting in anchorage areas. Subscribe to Middlebury Institute's commercial imagery analysis or follow \@detresfa\_ on X for crowd-sourced satellite analysis. Threshold: \>20% change in vessel count or new construction/revetment activity at any site within 72 hours. Cross-check with OSINT analysts on X (e.g., \@Capt\_Navy, \@MT\_Anderson) who routinely annotate Iranian naval imagery.

   _Rationale._  Over a 1-week horizon, satellite imagery of Iranian naval and air defense infrastructure provides the most reliable structural indicator of whether Iran is preparing for sustained conflict or repositioning for a negotiated settlement; changes in physical posture lag political statements by 24–72 hours but are harder to fake.

   _Sources:_
   - Planet Labs (PlanetScope) (paid, satcom, `en`) — `https://www.planet.com`
   - Sentinel Hub (ESA Copernicus) (freemium, satcom, `en`) — `https://www.sentinel-hub.com`
   - \@detresfa\_ (OSINT satellite analyst, X) (free, social, `en`) — `https://twitter.com/detresfa\_`
   - Middlebury Institute – James Martin Center for Nonproliferation Studies (free, think\_tank, `en`) — `https://www.nonproliferation.org`
   - Maxar Technologies (SecureWatch) (paid, satcom, `en`) — `https://www.maxar.com`

2. *Iranian domestic internet shutdown index and mobile data traffic anomalies (IRGC-linked censorship escalation)* — `domestic\_political` · novelty 0.50

   _Interpretation._  A nationwide or regional internet shutdown in Iran (particularly in Tehran, Isfahan, or Khuzestan) within the 1-week window signals the IRGC is suppressing protest coordination following Khamenei's death — consistent with SITREP's high-confidence assessment of imminent unrest. Partial shutdowns targeting specific platforms (Instagram, WhatsApp) signal managed dissent rather than acute crisis. No shutdowns or restoration of previously throttled services signals the regime feels internally secure enough to allow information flow, possibly because protests have not materialized at scale. False-signal trap: Iran routinely throttles internet during Friday prayers or anniversaries; check whether timing correlates with a political event before inferring protest suppression.

   _Monitoring._  Monitor NetBlocks (real-time internet disruption tracker) and IODA (Internet Outage Detection and Analysis) dashboards daily. Subscribe to NetBlocks Twitter/X alerts (\@netblocks). Cross-check with OONI (Open Observatory of Network Interference) data for Iran. Monitor 1218.ir (Iranian internet freedom tracker) if accessible. Threshold: any nationwide connectivity drop \>30% sustained for \>2 hours, or blocking of a major platform not previously blocked. Corroborate with Iranian diaspora social media (Persian-language X, Instagram) for protest reporting.

   _Rationale._  Internal Iranian unrest is identified as a load-bearing uncertainty that could disrupt IRGC command coherence; internet shutdowns are the Iranian state's most consistent and observable first response to domestic mobilization, making them the leading indicator of whether the protest threshold has been crossed.

   _Sources:_
   - NetBlocks (free, ngo, `en`) — `https://netblocks.org`
   - IODA (Internet Outage Detection and Analysis – Georgia Tech) (free, dashboard, `en`) — `https://ioda.inetintel.cc.gatech.edu`
   - OONI (Open Observatory of Network Interference) (free, ngo, `en`) — `https://ooni.org`
   - Iran International (Persian-language opposition outlet) (free, news\_outlet, `en`) — `https://www.iranintl.com/en`
   - 1420 (YouTube channel – Iranian street interviews) (free, social, `fa`) — `https://www.youtube.com/\@1420channel`

3. *US military airlift and sealift activity: C-17/C-5 flight patterns into Diego Garcia, Al Udeid, and Ramstein; USNS prepositioning vessel movements* — `military` · novelty 0.50

   _Interpretation._  A sustained increase in heavy airlift (C-17, C-5) sorties into Diego Garcia or Al Udeid Air Base, combined with USNS fast sealift ships departing Diego Garcia or Rota, signals the US is surging additional munitions, equipment, or forces consistent with the reported 10,000-troop deployment. Decreased tempo or return flights of empty airlifters signals the surge is completing rather than accelerating. False-signal trap: routine rotational deployments and scheduled exercises generate similar airlift signatures; cross-check with CENTCOM press releases and Congressional notifications (Section 506 drawdown authority) to distinguish surge from routine.

   _Monitoring._  Monitor ADS-B Exchange and FlightAware for USAF special mission callsigns (RCH, REACH, ATLAS) filing to OBBI (Bahrain), OTBH (Al Udeid), DIEG (Diego Garcia). Check daily. Monitor MarineTraffic for USNS vessel movements (T-AKE, T-AOE class). Subscribe to CENTCOM press releases RSS. Threshold: \>10 heavy airlift sorties per 24-hour period into any single Gulf base, sustained over 3 days. Cross-check with Haaretz defense reporting and Breaking Defense.

   _Rationale._  The SITREP reports a 10,000-troop US deployment surge; tracking the airlift and sealift execution of that surge over 1 week reveals whether the US is genuinely preparing for extended combat operations or using the deployment as diplomatic leverage, which is the key variable for whether talks succeed.

   _Sources:_
   - ADS-B Exchange (freemium, adsb\_flight, `en`) — `https://www.adsbexchange.com`
   - FlightAware (freemium, adsb\_flight, `en`) — `https://www.flightaware.com`
   - US CENTCOM Press Releases (free, gov\_bulletin, `en`) — `https://www.centcom.mil/MEDIA/PRESS-RELEASES`
   - Breaking Defense (freemium, news\_outlet, `en`) — `https://breakingdefense.com`
   - MarineTraffic (USNS vessel tracking) (freemium, ais\_shipping, `en`) — `https://www.marinetraffic.com`

4. *UNIFIL and Lebanese Armed Forces (LAF) incident reporting frequency and French diplomatic escalation indicators post-peacekeeper killing* — `diplomatic` · novelty 0.40

   _Interpretation._  An increase in UNIFIL daily incident reports citing Hezbollah activity, combined with French diplomatic escalation (emergency UN Security Council session, French naval assets repositioning to eastern Mediterranean), signals the peacekeeper killing is triggering a broader European re-engagement that could either stabilize (more monitoring presence) or escalate (French-Israeli friction) the Lebanon track. Silence from UNIFIL or French de-escalatory statements signals Paris has chosen to absorb the incident rather than escalate. False-signal trap: UNIFIL incident reports are often delayed 24–72 hours and may undercount incidents due to access restrictions; absence of reports does not equal absence of incidents.

   _Monitoring._  Monitor UNIFIL official website and \@UNIFIL\_ on X for daily situation reports (SITREPs). Monitor French MFA (\@francediplo\_EN) and Élysée Palace press releases for language escalation. Check UN Security Council meeting calendar (UN Web TV) for emergency sessions. Monitor French naval vessel movements via MarineTraffic (French Navy hull prefixes 'D' for destroyers, 'L' for amphibious). Threshold: any UNSC emergency session called within 72 hours of the peacekeeper killing, or French naval assets entering Lebanese territorial waters. Cross-check with L'Orient Today (Lebanese English-language outlet).

   _Rationale._  The killing of a French UNIFIL peacekeeper is a potential escalation trigger that could draw European actors into the conflict and destabilize the Lebanon ceasefire track; over a 1-week horizon, French diplomatic and military responses are the key observable that determines whether this incident is contained or catalytic.

   _Sources:_
   - UNIFIL Official Website (free, gov\_bulletin, `en`) — `https://unifil.unmissions.org`
   - UNIFIL (\@UNIFIL\_ on X) (free, social, `en`) — `https://twitter.com/UNIFIL\_`
   - French Ministry of Foreign Affairs (\@francediplo\_EN) (free, gov\_bulletin, `en`) — `https://www.diplomatie.gouv.fr/en`
   - L'Orient Today (freemium, news\_outlet, `en`) — `https://www.lorientlejour.com/en`
   - UN Web TV (Security Council meetings) (free, gov\_bulletin, `multi`) — `https://webtv.un.org`

5. *Persian-language Telegram channel sentiment and content analysis: IRGC-affiliated channels vs. reformist/opposition channels post-Khamenei death* — `social` · novelty 0.65

   _Interpretation._  A shift in IRGC-affiliated Telegram channels toward martyrdom narratives, calls for 'revenge,' or lionization of new leadership figures signals the regime is consolidating around a hardline successor posture and military escalation is more likely. Reformist or opposition channels showing increased coordination, protest call-outs, or sharing of protest logistics signals domestic unrest is approaching an organized threshold. Silence or heavy moderation across both channel types signals active IRGC suppression of the information environment. False-signal trap: IRGC-linked channels are known to run coordinated inauthentic behavior campaigns; a sudden surge in pro-regime content may be astroturfing rather than genuine mobilization.

   _Monitoring._  Use Telegram monitoring tools (Telepathy, TGStat) to track follower counts, posting frequency, and engagement rates for 10–15 key Persian-language channels spanning IRGC-affiliated (e.g., Tasnim Telegram, Sepah News), reformist (e.g., Kalameh), and diaspora opposition (e.g., Iran International Telegram). Monitor daily. Use keyword tracking for 'رهبر' (leader), 'انقلاب' (revolution), 'اعتراض' (protest), 'انتقام' (revenge). Threshold: \>50% increase in posting frequency or \>100K new subscribers on any single channel within 72 hours. Cross-check with Iran International and Radio Farda reporting.

   _Rationale._  Persian-language Telegram is the primary open-source window into both IRGC internal messaging and Iranian civil society mobilization; over a 1-week horizon, divergence between regime and opposition channel dynamics is the best available proxy for whether internal unrest is reaching a threshold that could alter Iran's negotiating posture or IRGC command coherence.

   _Sources:_
   - TGStat (Telegram analytics) (freemium, dashboard, `multi`) — `https://tgstat.com`
   - Iran International Telegram channel (free, social, `fa`) — `https://t.me/iranintl`
   - Radio Farda (RFE/RL Persian Service) (free, news\_outlet, `fa`) — `https://www.radiofarda.com`
   - Telepathy (Telegram OSINT tool) (free, api, `en`) — `https://github.com/jordanwildon/Telepathy`
   - Sepah News (IRGC official Telegram) (free, social, `fa`) — `https://t.me/sepahnews`

== Council\_Member\_Kimi (moonshotai/kimi-k2.5)
_Notes._  Signals selected prioritize observable, falsifiable indicators over narrative analysis. The 24h horizon focuses on tactical military and maritime indicators capable of triggering immediate escalation (Hormuz closure reality, carrier sorties, Hezbollah posture). The 1w horizon focuses on structural and diplomatic indicators (sanctions policy, European posture, domestic Iranian stability) that determine whether the conflict stabilizes or expands. All signals include specific cross-checks to mitigate deception (AIS spoofing, routine exercises, bureaucratic timing) inherent in high-tension OSINT environments.

=== Horizon 24h

1. *Commercial Tanker AIS Darkening vs. Anchorage Accumulation at Hormuz Entry Points* — `maritime` · novelty 0.60

   _Interpretation._  Increased AIS silence rates (\>40% of fleet) combined with anchorage buildup at Fujairah and Bandar Abbas indicates Iran is enforcing a kinetic blockade, raising escalation risk. Decreased silence with normal transit velocity suggests Iran is selectively enforcing or bluffing, allowing diplomatic space. False-signal trap: Vessels may intentionally disable AIS to avoid being targeted (security protocol) while still transiting, creating phantom 'closure' metrics; verify with actual satellite imagery of anchorage areas.

   _Monitoring._  Query MarineTraffic API for AIS gaps every 6 hours for vessels \>50,000 DWT transiting the Strait of Hormuz (Fujairah to Bandar Abbas corridor). Threshold: \>15% increase in 'dark' vessels over 24h baseline. Cross-check with Sentinel-2 satellite imagery of Fujairah Outer Anchorage (25.08°N 56.33°E) for vessel count verification, and Lloyd's List market reports for cargo delays.

   _Rationale._  Directly tests whether Iran's threatened Hormuz closure is operational reality or political theater; load-bearing for the survival of the nominal ceasefire and the US blockade response.

   _Sources:_
   - MarineTraffic (paid, ais\_shipping, `multi`) — `https://www.marinetraffic.com`
   - Sentinel Hub (freemium, satcom, `en`) — `https://apps.sentinel-hub.com`
   - TankerTrackers (Twitter/X) (free, social, `en`) — `https://twitter.com/TankerTrackers`
   - Lloyd's List Intelligence (paid, news\_outlet, `en`) — `https://lloydslist.maritimeintelligence.informa.com`

2. *US Carrier Strike Group Sortie Generation Rates (F/A-18E/F & F-35C)* — `air` · novelty 0.50

   _Interpretation._  Sustained high sortie rates (\>80 combat air patrol or strike training missions per day from CVN-72/75) indicates preparation for kinetic strikes against Iranian targets. Normal training tempo (\<30 sorties/day) suggests deterrent posture without imminent attack. False-signal trap: High sortie rates may reflect routine cyclic operations or pilot qualification requirements rather than combat preparation; distinguish by mission profile (armed vs. clean wings) and NOTAM correlation.

   _Monitoring._  Scrape ADS-B Exchange for Mode-S transponder codes associated with VFA-22, VFA-94, VMFA-314 (F-35C) and correlate with carrier positions (USNI Fleet Tracker). Monitor every 4 hours. Threshold: \>50% increase in daily sortie count over 7-day rolling average. Cross-check with pilot social media (Instagram geotags from Bahrain/Qatar bases) and CENTCOM press releases for exercise announcements.

   _Rationale._  Reveals US intent to escalate or de-escalate the kinetic phase beyond the current blockade, directly relevant to whether the conflict expands to Iranian homeland targets.

   _Sources:_
   - ADS-B Exchange (free, adsb\_flight, `en`) — `https://www.adsbexchange.com`
   - USNI News Fleet Tracker (free, think\_tank, `en`) — `https://news.usni.org/fleet-tracker`
   - Instagram OSINT (Pilot Geotags) (free, social, `en`) — `https://www.instagram.com`
   - CENTCOM (free, gov\_bulletin, `en`) — `https://www.centcom.mil`

3. *Hezbollah MLRS Launcher Thermal Signatures in South Lebanon UNIFIL Zone* — `satellite` · novelty 0.70

   _Interpretation._  Detection of new Multiple Launch Rocket System positions or thermal exhaust in Ayta ash-Shab, Bint Jbeil, or Maroun al-Ras indicates preparation for coordinated offensive against Israel. Absence of military hardware in historical launch sites suggests Hezbollah is maintaining the ceasefire. False-signal trap: Agricultural vehicles or civilian trucks with similar radar/thermal signatures may be misidentified; require multi-spectral confirmation (visible + SWIR) and correlation with UNIFIL ground patrol reports.

   _Monitoring._  Task Planet Labs SkySat or Maxar WorldView-3 for daily revisit over 10 key villages in Sector West (UNIFIL). Use change detection algorithms comparing to February 2026 baseline. Threshold: Any new launcher-sized objects (\>6m length) in open terrain. Cross-check with UNIFIL public incident reports and Lebanese Army Twitter for de-escalation announcements.

   _Rationale._  Tests whether Hezbollah is preparing to open a second major front as per load-bearing uncertainty \#3, which would collapse the Israel-Lebanon ceasefire and draw in European forces.

   _Sources:_
   - Planet Labs (paid, satcom, `en`) — `https://www.planet.com`
   - Maxar Technologies (paid, satcom, `en`) — `https://www.maxar.com`
   - UNIFIL Public Affairs (free, gov\_bulletin, `en`) — `https://unifil.unmissions.org`
   - EUMETSAT (free, satcom, `en`) — `https://www.eumetsat.int`

4. *CISA/FBI Joint Cybersecurity Advisory Velocity on Iranian APTs* — `cyber` · novelty 0.40

   _Interpretation._  Emergency directive (ED) or critical infrastructure-specific advisory on CyberAv3ngers or APT42 indicates imminent destructive cyberattack on US/EU energy/water sectors. Routine information sharing (AA-series) suggests espionage-only activity. False-signal trap: Advisory publication timing may follow bureaucratic review cycles (Tuesdays/Thursdays) rather than threat spikes; verify with Recorded Future threat intel on Iranian infrastructure provisioning.

   _Monitoring._  Monitor CISA.gov RSS feed and FBI FLASH bulletins for keywords 'Iran', 'CyberAv3ngers', 'APT42', 'destructive'. Check every 6 hours. Threshold: Upgrade from 'AA' (analysis) to 'ED' (emergency directive) or specific ICS-CERT alert. Cross-check with GreyNoise sensor data for scanning activity from Iranian IP ranges and Shodan exposure scans of US critical infrastructure.

   _Rationale._  The ceasefire framework explicitly excludes cyber operations; a spike in advisories signals exploitation of this gap and potential for asymmetric escalation.

   _Sources:_
   - CISA.gov Alerts (free, gov\_bulletin, `en`) — `https://www.cisa.gov/news-events/cybersecurity-advisories`
   - FBI FLASH Bulletins (free, gov\_bulletin, `en`) — `https://www.ic3.gov`
   - Recorded Future (paid, api, `en`) — `https://www.recordedfuture.com`
   - GreyNoise Intelligence (freemium, api, `en`) — `https://www.greynoise.io`

5. *Hebrew-Language IDF Reservist Telegram Channel Mobilization Chatter* — `social` · novelty 0.60

   _Interpretation._  Spike in 'Tzav 8' (emergency call-up) notifications and northern border deployment discussions indicates imminent IDF ground operation in Lebanon. Routine garrison complaints and training schedules suggest holding pattern. False-signal trap: Scheduled reserve drills or April/May training cycle announcements may be misread as combat mobilization; verify with official IDF Spokesperson Telegram channel for 'routine exercise' confirmations.

   _Monitoring._  Monitor Hebrew-language Telegram channels (e.g., 'חדשות צבא וביטחון', 'צה"ל - המחנה העברי') using NLP sentiment analysis for keywords 'צפון' (north), 'לבנון' (Lebanon), 'צו 8'. Scan every 2 hours. Threshold: \>3 sigma increase in mobilization-related posts over 48h baseline. Cross-check with N12 News and Walla! military correspondent reports for official confirmation.

   _Rationale._  Provides early warning of Israeli intent to escalate in Lebanon following the April 18 reservist death and Hezbollah IED incidents, which would collapse the separate Israel-Lebanon ceasefire track.

   _Sources:_
   - Telegram (IDF Unofficial Channels) (free, social, `he`) — `https://t.me`
   - N12 News (Mako) (free, news\_outlet, `he`) — `https://www.mako.co.il/news-military`
   - Walla! News (freemium, news\_outlet, `he`) — `https://news.walla.co.il`
   - IDF Spokesperson Unit (free, gov\_bulletin, `he`) — `https://www.idf.il`

=== Horizon 1w

1. *Brent Crude Futures Curve Backwardation (Front-Month vs. 3-Month Spread)* — `energy` · novelty 0.30

   _Interpretation._  Steep backwardation (front month premium \>\$5/bbl over 3-month) indicates market pricing prolonged Hormuz closure and supply disruption. Contango or flattening curve suggests trader confidence in diplomatic resolution within weeks. False-signal trap: Super-contango from floating storage arbitrage or SPR release rumors may distort the signal; verify with physical cargo differentials (Dubai/Oman) and VLCC freight rates.

   _Monitoring._  Pull daily settlement prices for Brent Jun 26 (front) and Sep 26 (3-month) contracts from ICE Futures Europe. Calculate spread. Monitor weekly. Threshold: Backwardation widening \>\$2/bbl week-over-week. Cross-check with Energy Intelligence cargo tracking and OPEC+ production policy statements for supply-side confounders.

   _Rationale._  Market consensus on the duration of Hormuz closure and likelihood of US-Iran binding agreement, aggregating private intelligence on diplomatic progress and military posture.

   _Sources:_
   - ICE Futures Europe (paid, market\_data, `en`) — `https://www.theice.com/products/219/Brent-Crude-Futures`
   - Bloomberg Terminal (paid, market\_data, `en`) — `https://www.bloomberg.com/professional`
   - Energy Intelligence (paid, news\_outlet, `en`) — `https://www.energyintel.com`
   - Reuters Eikon (paid, market\_data, `en`) — `https://www.refinitiv.com/en/products/eikon-trading-software`

2. *IRGC Internal Security Force (FARAJA) Deployment Density in Tehran and Kurdish Cities* — `domestic\_political` · novelty 0.50

   _Interpretation._  High concentration of FARAJA anti-riot vehicles and Basij paramilitary at Azadi Square, Enghelab Street, and in Sanandaj/Mahabad indicates regime anticipation of major protests post-Khamenei death. Normal traffic patterns suggest successful suppression or no unrest. False-signal trap: Nowruz holiday security deployments or traffic police for Ramadan preparations may be misread as protest suppression; verify with NetBlocks internet shutdown correlation.

   _Monitoring._  Weekly Sentinel-2 change detection over key Tehran intersections (35.7°N 51.4°E) and Sanandaj city center. Count military-style vehicle concentrations. Threshold: \>20% increase in vehicle density at known protest nodes. Cross-check with NetBlocks internet disruption metrics and HRANA protest casualty reports.

   _Rationale._  Tests load-bearing uncertainty \#5 regarding internal Iranian stability and whether unrest disrupts IRGC command coherence, potentially altering Iran's negotiating posture.

   _Sources:_
   - Sentinel Hub (freemium, satcom, `en`) — `https://apps.sentinel-hub.com`
   - NetBlocks (free, dashboard, `en`) — `https://netblocks.org`
   - HRANA (Human Rights Activists News Agency) (free, ngo, `fa`) — `https://www.hrana.org`
   - IranWire (free, news\_outlet, `fa`) — `https://iranwire.com`

3. *US Treasury OFAC SDN Designations on Iranian Tanker Networks* — `legal` · novelty 0.40

   _Interpretation._  Mass designation (\>15 vessels or front companies per week) of NITC, IRISL, or 'ghost fleet' operators signals intensification of the US naval blockade and financial warfare. Absence of new designations suggests tacit easing to facilitate diplomacy. False-signal trap: Routine sanctions maintenance (anniversaries of previous designations) may be misread as escalation; distinguish by target novelty and Treasury press release language ('disrupting Hormuz-related revenues').

   _Monitoring._  Monitor Treasury.gov 'Resource Center/Sanctions' RSS feed for 'Iran' and 'maritime' tags. Weekly aggregation. Threshold: \>10 new SDNs in single tranche related to oil shipping. Cross-check with Windward maritime intelligence for vessel behavioral changes (dark activity, flag hopping) and Lloyd's List for insurance market reactions.

   _Rationale._  Directly indicates whether the US maintains or lifts the naval blockade of Iran-linked shipping (load-bearing uncertainty \#1), which determines Hormuz reopening.

   _Sources:_
   - US Treasury OFAC (free, gov\_bulletin, `en`) — `https://home.treasury.gov/policy-issues/financial-sanctions/sanctions-programs-and-country-information/iran-sanctions`
   - Windward Maritime Intelligence (paid, ais\_shipping, `en`) — `https://www.windward.ai`
   - Lloyd's List Intelligence (paid, news\_outlet, `en`) — `https://lloydslist.maritimeintelligence.informa.com`
   - Equasis (free, database, `en`) — `https://www.equasis.org`

4. *French/UK Naval Asset Movements to UNIFIL Maritime Task Force* — `maritime` · novelty 0.60

   _Interpretation._  Movement of French Mistral-class amphibious assault ships (Tonnerre/Dixmude) or Type 45 destroyers toward Lebanese territorial waters indicates European response to French peacekeeper killing and potential enforcement action. Static posture in Toulon/Cadiz suggests diplomatic-only response. False-signal trap: Scheduled NATO exercise MEDSHARK or port visit to Beirut for humanitarian aid may be misread as combat deployment; verify with French Ministry of Armed Forces mission statements.

   _Monitoring._  Track AIS for French Navy hulls L9014 (Tonnerre), L9015 (Dixmude) and UK HMS Diamond/Duncan via MarineTraffic. Monitor French MoD press releases weekly. Threshold: Entry into Eastern Med UNIFIL AOR or holding pattern off Cyprus. Cross-check with NATO MARCOM schedules and UNIFIL maritime task force rotation announcements.

   _Rationale._  Tests load-bearing uncertainty \#6 regarding whether the French peacekeeper killing triggers European military entry into the Lebanon conflict, expanding the war beyond bilateral Iran-Israel-US.

   _Sources:_
   - MarineTraffic (Military Vessels) (paid, ais\_shipping, `en`) — `https://www.marinetraffic.com`
   - French Ministry of Armed Forces (free, gov\_bulletin, `fr`) — `https://www.defense.gouv.fr`
   - NATO Maritime Command (free, gov\_bulletin, `en`) — `https://mc.nato.int`
   - Twitter \@IntelCrab (free, social, `en`) — `https://twitter.com/IntelCrab`

5. *Egyptian-Pakistani Diplomatic Shuttle Frequency (VIP Flight Tracking)* — `diplomatic` · novelty 0.70

   _Interpretation._  Daily or bidirectional VIP flights (Pakistani AF Gulfstream/EGYPTAIR VIP) between Cairo, Islamabad, Tehran, and Doha indicate urgent mediation push to secure binding agreement before ceasefire collapse. Gaps \>72 hours suggest talks stalled. False-signal trap: Routine OIC coordination on Gaza or humanitarian aid flights may be misread as Iran-US mediation; verify with Foreign Ministry statements mentioning 'final agreement' or 'nuclear deal'.

   _Monitoring._  Monitor ADS-B Exchange for Pakistani Air Force (PAF) GLF4/5 (registrations J-755, J-756) and EGYPTAIR VIP A320/B737 (SU-GGG, SU-GGE) flying to Doha, Muscat, or Tehran. Track Egyptian MFA and Pakistani ISPR Twitter for 'shuttle diplomacy' keywords. Weekly aggregation. Threshold: \>3 high-level visits per week. Cross-check with Al Jazeera diplomatic desk reporting and flight manifests.

   _Rationale._  Directly monitors progress toward a binding US-Iran agreement (load-bearing uncertainty \#2) and the credibility of the Egypt-Pakistan mediation track claimed by both capitals.

   _Sources:_
   - ADS-B Exchange (VIP Tracking) (free, adsb\_flight, `en`) — `https://www.adsbexchange.com`
   - Egyptian Foreign Ministry (Twitter) (free, social, `ar`) — `https://twitter.com/MfaEgypt`
   - Pakistan ISPR (free, gov\_bulletin, `en`) — `https://www.ispr.gov.pk`
   - Al Jazeera Diplomatic Correspondent (free, news\_outlet, `en`) — `https://www.aljazeera.com`
