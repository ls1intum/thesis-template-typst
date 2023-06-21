# thesis-template-typst
This repository provides a comprehensive Typst template for writing your Bachelor's or Master's thesis at the CIT School of TUM (Technical University of Munich). It includes two types of documents: a proposal template and a thesis template, both specifically designed for students in the field of Informatics. For more information about writing a thesis at the CIT School, please visit the [official CIT website](https://www.cit.tum.de/en/cit/studies/students/thesis-completing-your-studies/informatics/).

**Note:** This is only a template. You have to adapt the template to your thesis and discuss the structure of your thesis with your supervisor!

--- 
## Guidelines 

__Please thorougly read our guidelines and hints on [confluence](https://confluence.ase.in.tum.de/display/EduResStud/How+to+thesis)!__ (TUM Login Required) 

---
## Installation

For detailed installation instructions, please refer to the [official installation guide](https://github.com/typst/typst). Here, we provide basic steps for installing Typst's CLI:

- You can get sources and pre-built binaries from the [releases page](https://github.com/typst/typst/releases).
- Use package managers like `brew` or `pacman` to install Typst. Be aware that the versions in the package managers might lag behind the latest release.
- If you have a [Rust](https://rustup.rs/) toolchain installed, you can also install the latest development version.

Nix and Docker users, please refer to the official installation guide for detailed instructions.

## Usage
Once you have installed Typst, you can use it like this:
```sh
# Creates `thesis.pdf` in working directory.
typst compile thesis.typ

# Creates `proposal.pdf` in working directory.
typst compile proposal.typ

# Creates PDF file at the desired path.
typst compile thesis.typ path/to/output.pdf
```

You can also watch source files and automatically recompile on changes. This is
faster than compiling from scratch each time because Typst has incremental
compilation.
```sh
# Watches source files and recompiles on changes.
typst watch thesis.typ
```

## Working with the Typst Web Editor

If you prefer an integrated IDE-like experience with autocompletion and instant preview, the Typst web editor allows you to import files directly into a new or existing document. Here's how you can do this:

1. Navigate to the [Typst Web Editor](https://typst.app/).
2. Create a new blank document.
3. Click on "File" on the top left menu, then "Upload File".
4. Select all .typ and .bib files along with the figures provided in this template repository.

**Note:** You can select multiple files to import. The editor will import and arrange all the files accordingly. Always ensure you have all the necessary .typ, .bib, and figures files you need for your document.


---
## Further Resources

- [Typst Documentation](https://typst.app/docs/)
- [Typst Guide for LaTeX Users](https://typst.app/docs/guides/guide-for-latex-users/)
