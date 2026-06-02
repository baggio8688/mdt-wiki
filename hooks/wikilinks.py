"""MkDocs hook: convert Obsidian [[wikilinks]] to standard Markdown links.

Handles formats:
  - [[target|alias]] → [alias](relative/to/target.md)
  - [[target]]       → [target](relative/to/target.md)

Uses relative paths (no leading /) so links work correctly when
the site is hosted at a subpath (e.g. GitHub Pages project site).
Looks up target files via the MkDocs FileCollection for accuracy.
"""

import os
import re

WIKILINK_RE = re.compile(r"\[\[([^\]|]+)(?:\|([^\]|]+))?\]\]")


def on_page_markdown(markdown, page, config, files):
    # Get the directory containing the current page, relative to docs_dir
    current_dir = os.path.dirname(page.file.src_path)

    def replace_wikilink(match):
        target = match.group(1).strip().rstrip("/")
        alias = match.group(2)

        # Preserve file extension if present, else append .md
        if "." not in target:
            target_path = target + ".md"
        else:
            target_path = target

        # Try to find the target file in the MkDocs file collection
        target_file = files.get_file_from_path(target_path)

        if target_file:
            # Compute relative path from current page's directory to target
            rel = os.path.relpath(target_file.src_path, current_dir)
            label = alias if alias else target
            return f"[{label}]({rel})"
        else:
            # Fallback: try relative path guess anyway
            rel = os.path.relpath(target_path, current_dir)
            label = alias if alias else target
            return f"[{label}]({rel})"

    return WIKILINK_RE.sub(replace_wikilink, markdown)
