"""MkDocs hook: convert Obsidian [[wikilinks]] to standard Markdown links.

Handles formats:
  - [[target|alias]] → [alias](/target.md)
  - [[target]]       → [target](/target.md)

Note: Uses root-relative paths (prefixed with /) so links resolve correctly
from any directory depth within the docs_dir.
"""

import re

WIKILINK_RE = re.compile(r"\[\[([^\]|]+)(?:\|([^\]|]+))?\]\]")


def on_page_markdown(markdown, page, config, files):
    def replace_wikilink(match):
        target = match.group(1).strip()
        alias = match.group(2)

        # Clean trailing slash
        target = target.rstrip("/")

        # Preserve any file extension already present, else append .md
        if "." not in target:
            target += ".md"

        # Root-relative path so links work from any directory depth
        if not target.startswith("/"):
            target = "/" + target

        label = alias if alias else target.lstrip("/")
        return f"[{label}]({target})"

    return WIKILINK_RE.sub(replace_wikilink, markdown)
