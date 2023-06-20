# thesis-template-typst
A Typst template for your Bachelor's or Master's thesis.

_Please note:_ This is only a template. You have to adapt the template to your thesis and discuss the structure of your thesis with your supervisor!

--- 
## Guidelines 

__Please thorougly read our guidelines and hints on [confluence](https://confluence.ase.in.tum.de/display/EduResStud/How+to+thesis)!__ (TUM Login Required) 

---
## Installation
Typst's CLI is available from different sources:

- You can get sources and pre-built binaries for the latest release of Typst
  from the [releases page](https://github.com/typst/typst/releases/).

- You can install Typst through different package managers. Note that the
  versions in the package managers might lag behind the latest release.
  - macOS/Linux: `brew install typst`
  - Arch Linux: `pacman -S typst`
  - Void Linux: `xbps-install typst`

- If you have a [Rust](https://rustup.rs/) toolchain installed, you can also install the
  latest development version with
  `cargo install --git https://github.com/typst/typst`. Note that this will
  be a "nightly" version that may be broken or not yet properly documented.

- Nix users can use the `typst` package with `nix-shell -p typst` or build and
  run the bleeding edge version with `nix run github:typst/typst -- --version`.

- Docker users can run a prebuilt image with
  `docker run -it ghcr.io/typst/typst:latest`.

## Usage
Once you have installed Typst, you can use it like this:
```sh
# Creates `file.pdf` in working directory.
typst compile file.typ

# Creates PDF file at the desired path.
typst compile path/to/source.typ path/to/output.pdf
```

You can also watch source files and automatically recompile on changes. This is
faster than compiling from scratch each time because Typst has incremental
compilation.
```sh
# Watches source files and recompiles on changes.
typst watch file.typ
```

If you prefer an integrated IDE-like experience with autocompletion and instant
preview, you can also check out the [Typst web app](https://typst.app/) and manually import the files

---
## Further Resources

- [Typst Documentation](https://typst.app/docs/)
- [Typst Guide for LaTeX Users](https://typst.app/docs/guides/guide-for-latex-users/)
