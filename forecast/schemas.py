from .config import PREDICTIONS_PER_HORIZON


def head_schema(horizons: list[str]) -> dict:
    return {
        "name": "council_head_output",
        "schema": {
            "type": "object",
            "properties": {
                "as_of": {"type": "string"},
                "sitrep": {"type": "string"},
                "key_actors": {
                    "type": "array",
                    "items": {
                        "type": "object",
                        "properties": {
                            "name": {"type": "string"},
                            "stated_position": {"type": "string"},
                        },
                        "required": ["name", "stated_position"],
                    },
                },
                "load_bearing_uncertainties": {
                    "type": "array",
                    "items": {"type": "string"},
                },
                "reporting_contradictions": {
                    "type": "array",
                    "items": {"type": "string"},
                },
            },
            "required": ["as_of", "sitrep", "key_actors", "load_bearing_uncertainties"],
        },
    }


def _prediction_item_schema() -> dict:
    return {
        "type": "object",
        "properties": {
            "prediction": {
                "type": "string",
                "description": "One concrete, falsifiable predicted event or outcome in this horizon.",
            },
            "supporting_reasoning": {"type": "string"},
            "historical_precedent_supporting": {
                "type": "string",
                "description": "A past event/pattern that lends weight to this prediction.",
            },
            "historical_precedent_counterveiling": {
                "type": "string",
                "description": "A past event/pattern that cuts against this prediction.",
            },
            "change_factor": {
                "type": "string",
                "description": "A single observable factor that, if it eventuated, would meaningfully change the prediction.",
            },
            "confidence": {
                "type": "number",
                "minimum": 0.0,
                "maximum": 1.0,
                "description": "Confidence in this specific prediction, 0.0–1.0.",
            },
        },
        "required": [
            "prediction",
            "supporting_reasoning",
            "historical_precedent_supporting",
            "historical_precedent_counterveiling",
            "change_factor",
            "confidence",
        ],
    }


def member_schema(horizons: list[str], n_per_horizon: int = PREDICTIONS_PER_HORIZON) -> dict:
    forecasts_props = {}
    for h in horizons:
        forecasts_props[h] = {
            "type": "array",
            "minItems": n_per_horizon,
            "maxItems": n_per_horizon,
            "items": _prediction_item_schema(),
        }
    return {
        "name": "council_member_output",
        "schema": {
            "type": "object",
            "properties": {
                "forecasts": {
                    "type": "object",
                    "properties": forecasts_props,
                    "required": list(horizons),
                },
                "overall_confidence": {"type": "number", "minimum": 0.0, "maximum": 1.0},
                "overall_notes": {"type": "string"},
            },
            "required": ["forecasts", "overall_confidence"],
        },
    }


def author_schema(horizons: list[str]) -> dict:
    per_horizon = {
        "type": "object",
        "properties": {
            "headline": {"type": "string"},
            "top_predictions": {
                "type": "array",
                "items": {
                    "type": "object",
                    "properties": {
                        "prediction": {"type": "string"},
                        "members_raising": {
                            "type": "array",
                            "items": {"type": "string"},
                        },
                        "mean_confidence": {"type": "number"},
                        "consensus_strength": {
                            "type": "string",
                            "enum": ["strong", "moderate", "weak", "single-source"],
                        },
                        "supporting_rationale": {"type": "string"},
                        "counterveiling_rationale": {"type": "string"},
                        "watch_trigger": {"type": "string"},
                    },
                    "required": [
                        "prediction",
                        "members_raising",
                        "mean_confidence",
                        "consensus_strength",
                    ],
                },
            },
            "sharp_disagreements": {"type": "array", "items": {"type": "string"}},
        },
        "required": ["headline", "top_predictions"],
    }
    return {
        "name": "report_author_output",
        "schema": {
            "type": "object",
            "properties": {
                "by_horizon": {
                    "type": "object",
                    "properties": {h: per_horizon for h in horizons},
                    "required": list(horizons),
                },
                "cross_horizon_themes": {"type": "array", "items": {"type": "string"}},
                "convergent_signals": {"type": "array", "items": {"type": "string"}},
                "contested_signals": {"type": "array", "items": {"type": "string"}},
                "watchlist_triggers": {"type": "array", "items": {"type": "string"}},
                "calibration_note": {"type": "string"},
            },
            "required": ["by_horizon", "calibration_note"],
        },
    }
