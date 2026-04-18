from dataclasses import dataclass


@dataclass(frozen=True)
class Role:
    name: str
    model: str
    lineage: str = ""


DEFAULT_COUNCIL_HEAD = Role("Council_Head", "anthropic/claude-sonnet-4.6", "Anthropic")

DEFAULT_COUNCIL_MEMBERS: list[Role] = [
    Role("Council_Member_GLM", "z-ai/glm-5.1", "Zhipu"),
    Role("Council_Member_DeepSeek", "deepseek/deepseek-v3.2", "DeepSeek"),
    Role("Council_Member_Gemini", "google/gemini-3-flash-preview", "Google"),
    Role("Council_Member_Claude", "anthropic/claude-sonnet-4.6", "Anthropic"),
    Role("Council_Member_Kimi", "moonshotai/kimi-k2.5", "Moonshot"),
]

DEFAULT_REPORT_AUTHOR = Role("Report_Author", "anthropic/claude-sonnet-4.6", "Anthropic")

DEFAULT_HORIZONS: list[str] = ["24h", "1w", "1m"]

DEFAULT_RSS_FEEDS: list[str] = [
    "https://www.timesofisrael.com/feed/",
    "https://www.aljazeera.com/xml/rss/all.xml",
    "https://feeds.bbci.co.uk/news/world/rss.xml",
]

PREDICTIONS_PER_HORIZON = 3

OPENROUTER_URL = "https://openrouter.ai/api/v1/chat/completions"
