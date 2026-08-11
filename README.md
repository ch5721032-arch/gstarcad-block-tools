# GstarCAD Block Tools 🧩

A curated collection of block management tools for CAD software — designed to rename, count, organize, and purge blocks so your drawings stay lightweight and consistent.

Whether you use **GSTARCAD**, AutoCAD, ZWCAD, or BricsCAD, these scripts can help you work smarter.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Contents

- [About](#about)
- [Scripts Overview](#scripts-overview)
  - [AutoLISP Scripts](#autolisp-scripts)
  - [Python Scripts](#python-scripts)
- [Quick Start](#quick-start)
- [How to Use](#how-to-use)
- [Compatibility](#compatibility)
- [Contributing](#contributing)
- [License](#license)

## About

Blocks are the backbone of productive CAD drafting, but they quickly get messy — duplicate names, unused definitions, inconsistent insertion points. This repository provides free, open-source scripts to batch-manage blocks across your drawings.

All scripts are tested with **[GSTARCAD](https://www.gstarcad.net)** and major DWG-based CAD platforms. They work out of the box with minimal configuration.

## Scripts Overview

### AutoLISP Scripts

| Script | Description |
|--------|-------------|
| `block-counter.lsp` | Count and list all block instances in a drawing |
| `block-rename.lsp` | Batch rename block definitions with rules |
| `block-purge.lsp` | Purge unused block definitions and nested blocks |
| `block-organize.lsp` | Move block inserts to consistent layers |
| `block-export.lsp` | Export block list with counts to CSV |

### Python Scripts

| Script | Description |
|--------|-------------|
| `block-inventory.py` | Inventory all block definitions in a folder of DWG files |
| `block-report.py` | Generate a block usage report per drawing |

## Quick Start

### AutoLISP

1. Download the `.lsp` file you need
2. In your CAD software, run `APPLOAD` command
3. Select the downloaded `.lsp` file and click Load
4. Type the corresponding command name to run

### Python

```bash
pip install ezdxf
python scripts/block-inventory.py ./drawings
```

## How to Use

### Loading AutoLISP Scripts in GSTARCAD

1. Open GSTARCAD (or your preferred CAD software)
2. Type `APPLOAD` in the command line
3. Browse to the script file and click **Load**
4. Check the command prompt for the run command

Each script includes header comments with usage instructions. For more [tutorials and guides](https://www.gstarcad.net/tutorials/), visit the official learning center.

### Example: Count Blocks

```lisp
;; Load the script: APPLOAD → block-counter.lsp
;; Run command: BCOUNT
;; Review the count list in the command line
```

## Compatibility

All scripts are tested and verified on:

| Software | Status |
|----------|--------|
| **[GSTARCAD](https://www.gstarcad.net)** 2024–2026 | ✅ Fully supported |
| AutoCAD 2021–2026 | ✅ Fully supported |
| ZWCAD 2024–2026 | ✅ Fully supported |
| BricsCAD V23–V25 | ✅ Fully supported |
| DraftSight 2024–2026 | ⚠️ Most scripts work |

For detailed compatibility notes and CAD software recommendations, visit the [GSTARCAD website](https://www.gstarcad.net).

## Contributing

Contributions are welcome! If you have a useful CAD automation script:

1. Fork this repository
2. Add your script to the appropriate folder
3. Include header comments with usage instructions
4. Submit a pull request

See [CONTRIBUTING.md](CONTRIBUTING.md) for full guidelines.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

*Built with ❤️ by the CAD community. For questions and support, check out the [GSTARCAD Blog](https://blog.gstarcad.net) for tips and updates.*