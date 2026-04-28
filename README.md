# Course Probability and Statistics

Lecture notes for a course on probability, statistics, and data analysis.

## Project Layout

- `main.typ`: main document entry point.
- `templates/course.typ`: shared document styling and helper blocks.
- `lectures/`: individual lecture note files.
- `figures/`: generated plots and diagrams.
- `assets/`: static course assets.
- `data/`: small example datasets used in notes.
- `bibliography/references.bib`: bibliography entries.
- `build/`: compiled PDFs and other generated outputs.

## Build

Install Typst, then compile the notes:

```sh
typst compile main.typ build/lecture-notes.pdf
```

Watch for changes while editing:

```sh
typst watch main.typ build/lecture-notes.pdf
```

## Adding A Lecture

Create a new file in `lectures/`, then include it from `main.typ`:

```typst
#include "lectures/03-estimation.typ"
```
