# Council accuracy leaderboard

_Generated 2026-04-19T23:27:35+00:00. Runs: 1. Predictions recorded: 45. Predictions evaluated: 15._

Scores follow a 5-point ordinal rubric: `correct=1.0`, `mostly_correct=0.75`, `partial=0.5`, `mostly_wrong=0.25`, `wrong=0.0`. `Calibration Δ` is mean(score − confidence); negative means over-confident. `Brier` is mean squared error between confidence and realised score (lower is better).

## By model

| Model | N | Mean score | Mean conf | Calibration Δ | Brier | Correct | Partial | Wrong |
|---|---|---|---|---|---|---|---|---|
| anthropic/claude-sonnet-4.6 | 3 | 100.0% | 77.3% | +0.227 | 0.0531 | 3 | 0 | 0 |
| moonshotai/kimi-k2.5 | 3 | 62.5% | 52.5% | +0.100 | 0.1 | 1 | 0 | 1 |
| z-ai/glm-5.1 | 3 | 41.7% | 48.3% | -0.067 | 0.2417 | 1 | 0 | 2 |
| deepseek/deepseek-v3.2 | 3 | 37.5% | 65.0% | -0.275 | 0.1812 | 1 | 0 | 1 |
| google/gemini-3-flash-preview | 3 | 0.0% | 63.3% | -0.633 | 0.405 | 0 | 0 | 3 |

## By lineage

| Lineage | N | Mean score | Mean conf | Calibration Δ | Brier | Correct | Partial | Wrong |
|---|---|---|---|---|---|---|---|---|
| Anthropic | 3 | 100.0% | 77.3% | +0.227 | 0.0531 | 3 | 0 | 0 |
| Moonshot | 3 | 62.5% | 52.5% | +0.100 | 0.1 | 1 | 0 | 1 |
| Zhipu | 3 | 41.7% | 48.3% | -0.067 | 0.2417 | 1 | 0 | 2 |
| DeepSeek | 3 | 37.5% | 65.0% | -0.275 | 0.1812 | 1 | 0 | 1 |
| Google | 3 | 0.0% | 63.3% | -0.633 | 0.405 | 0 | 0 | 3 |

## By horizon

| Horizon | N | Mean score | Mean conf | Calibration Δ | Brier | Correct | Partial | Wrong |
|---|---|---|---|---|---|---|---|---|
| 24h | 15 | 48.1% | 61.7% | -0.136 | 0.2047 | 6 | 0 | 7 |

## Improvement themes (worst-scoring predictions with notes)

- **deepseek/deepseek-v3.2** · `24h` · wrong (0.0): The prediction over-indexed on a specific diplomatic mechanism (emergency UNSC meeting) which, while plausible for a peacekeeper death, was bypassed in favor of ongoing direct negotiations and broader multilateral statements already in progress.
  > France, backed by other European Union members, publicly calls for an emergency UN Security Council meeting to address the killing of the French UNIFIL peacekeeper and the destabilization of southern 
- **z-ai/glm-5.1** · `24h` · wrong (0.0): The prediction relied on the assumption that a specific public announcement would be made within a very narrow 24-hour window; in conflict scenarios, operational strikes may occur without immediate or specific formal announcements citing specific legal clauses.
  > IDF announces at least one additional strike on Hezbollah targets in Lebanon before April 19 20:54 UTC, citing self-defense provisions of the ceasefire agreement.
- **google/gemini-3-flash-preview** · `24h` · wrong (0.0): The prediction was overly specific about the tactical nature of the engagement (warning shots/non-kinetic standoff) during a period where the conflict was primarily defined by air superiority and a broader blockade rather than individual ship-to-ship skirmishes.
  > The US Navy will conduct a freedom of navigation operation or escort mission near the Strait of Hormuz that results in a non-kinetic standoff or warning shots with IRGC gunboats.
- **google/gemini-3-flash-preview** · `24h` · wrong (0.0): The prediction relied on the 'gray zone' logic of Syria but failed to account for the shift in focus toward direct US-Israeli strikes inside Iran (Operation Epic Fury) and the diplomatic sensitivity of the Trump-mediated ceasefire window.
  > Israel will conduct at least one targeted airstrike in Syria against IRGC or Hezbollah assets, despite the Lebanon ceasefire.
- **google/gemini-3-flash-preview** · `24h` · wrong (0.0): The prediction failed to account for the market's sensitivity to diplomatic signals; while the Islamabad talks failed, subsequent statements by Trump regarding a potential deal and a second round of talks over the weekend caused prices to drop rather than rise.
  > Oil prices (Brent Crude) will rise by at least 2% in the next 24-hour trading cycle.
- **z-ai/glm-5.1** · `24h` · mostly_wrong (0.25): The prediction failed to account for the high level of diplomatic uncertainty and the tendency of mediators to withhold specific dates/locations for security and leverage during active conflict escalations.
  > Pakistan's Foreign Ministry issues a public statement announcing a specific date and location for resumed US-Iran negotiations before April 22.
- **moonshotai/kimi-k2.5** · `24h` · mostly_wrong (0.25): The prediction was too specific about the *type* of naval incident (warning shots at gunboats vs. disabling fire at a transport vessel); broadening the criteria to 'kinetic engagement between US and Iranian-flagged vessels' would have captured the actual event.
  > US Central Command confirms at least one incident of warning shots fired by US Navy vessels at IRGC gunboats, or reports IRGC forces boarding an additional commercial vessel, in the Strait of Hormuz.

---

Suggestions in this report are advisory. Prompt edits to `prompts/council_member.md` are human-gated — review the themes above and apply changes manually.