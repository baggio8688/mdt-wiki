# Wiki Schema

## Domain
制造业数字化转型（Manufacturing Digital Transformation）— 涵盖工业4.0、智能制造、工业物联网、数字孪生、AI在制造业的应用、工业自动化、精益生产、供应链数字化、工业软件等主题。

## Conventions
- File names: lowercase, hyphens, no spaces (e.g., `digital-twin-manufacturing.md`)
- Every wiki page starts with YAML frontmatter (see below)
- Use `[[wikilinks]]` to link between pages (minimum 2 outbound links per page)
- When updating a page, always bump the `updated` date
- Every new page must be added to `index.md` under the correct section
- Every action must be appended to `log.md`
- **Provenance markers:** On pages that synthesize 3+ sources, append `^[raw/articles/source-file.md]` at the end of paragraphs whose claims come from a specific source.

## Frontmatter
```yaml
---
title: Page Title
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: entity | concept | comparison | query | summary
tags: [from taxonomy below]
sources: [raw/articles/source-name.md]
confidence: high | medium | low
contested: true
contradictions: [other-page-slug]
---
```

### raw/ Frontmatter
```yaml
---
source_url: https://example.com/article
ingested: YYYY-MM-DD
sha256: <hex digest of the raw content below the frontmatter>
---
```

## Tag Taxonomy

### Technology Tags
- **iot**: Industrial IoT, sensors, edge computing, connectivity
- **ai**: Artificial Intelligence, machine learning, deep learning, computer vision
- **digital-twin**: Digital twin, simulation, virtual commissioning
- **automation**: Industrial automation, robotics, PLC, SCADA
- **cloud**: Cloud computing, edge cloud, hybrid cloud in manufacturing
- **data**: Data analytics, big data, data platforms, data lakes
- **cybersecurity**: OT security, industrial cybersecurity, IT/OT convergence security
- **5g**: 5G in manufacturing, private networks
- **additive**: Additive manufacturing, 3D printing
- **ar-vr**: Augmented reality, virtual reality, mixed reality in industry
- **digital-thread**: Digital thread, PLM, product lifecycle

### Business Tags
- **strategy**: Digital transformation strategy, roadmap, maturity models
- **supply-chain**: Supply chain digitization, resilience, visibility
- **lean**: Lean manufacturing, Kaizen, continuous improvement, TPS
- **sustainability**: Green manufacturing, energy efficiency, circular economy
- **workforce**: Skills gap, training, human-machine collaboration
- **innovation**: Innovation management, R&D, emerging tech adoption

### Organization Tags
- **consulting**: McKinsey, BCG, Deloitte, Accenture, PwC, Capgemini
- **vendor**: Siemens, Rockwell, ABB, GE, Fanuc, SAP, PTC, Dassault
- **analyst**: Gartner, Forrester, IoT Analytics, ARC, LNS Research
- **academia**: Research papers, university research, academic studies
- **startup**: Startup companies, emerging tech vendors
- **association**: Industry associations, standards bodies

### Meta Tags
- **comparison**: Comparison/analysis pages
- **timeline**: Historical development overviews
- **report**: Industry reports, market research
- **case-study**: Real-world implementation examples
- **trend**: Trend analysis and forecasts

## Page Thresholds
- **Create a page** when an entity/concept appears in 2+ sources OR is central to one source
- **Add to existing page** when a source mentions something already covered
- **DON'T create a page** for passing mentions, minor details, or things outside the domain
- **Split a page** when it exceeds ~200 lines — break into sub-topics with cross-links
- **Archive a page** when its content is fully superseded

## Entity Pages
One page per notable entity. Include:
- Overview / what it is
- Key facts and dates
- Products, solutions, market position
- Relationships to other entities ([[wikilinks]])
- Source references

## Concept Pages
One page per concept or topic. Include:
- Definition / explanation
- Current state of knowledge
- Industry applications and examples
- Related concepts ([[wikilinks]])

## Comparison Pages
Side-by-side analyses. Include:
- What is being compared and why
- Dimensions of comparison (table format preferred)
- Verdict or synthesis
- Sources

## Update Policy
When new information conflicts with existing content:
1. Check the dates — newer sources generally supersede older ones
2. If genuinely contradictory, note both positions with dates and sources
3. Mark the contradiction in frontmatter
4. Flag for user review
