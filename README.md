# thesis-template-typst
This repository provides a comprehensive Typst template for writing your Bachelor's or Master's thesis at the CIT School of TUM (Technical University of Munich). It includes two types of documents: a proposal template and a thesis template, both specifically designed for students in the field of Informatics. For more information about writing a thesis at the CIT School, please visit the [official CIT website](https://www.cit.tum.de/en/cit/studies/students/thesis-completing-your-studies/informatics/).

> [!IMPORTANT]
> This is only a template. You have to adapt the template to your thesis and discuss the structure of your thesis with your supervisor!


## Guidelines 
> [!TIP]
> __Please thorougly read our guidelines and hints on [confluence](https://confluence.ase.in.tum.de/display/EduResStud/How+to+thesis)!__ (TUM Login Required) 


## Installation
For detailed installation instructions, please refer to the [official installation guide](https://github.com/typst/typst). Here, we provide basic steps for installing Typst's CLI:

- You can get sources and pre-built binaries from the [releases page](https://github.com/typst/typst/releases).
- Use package managers like `brew` or `pacman` to install Typst. Be aware that the versions in the package managers might lag behind the latest release.
- If you have a [Rust](https://rustup.rs/) toolchain installed, you can also install the latest development version.

Nix and Docker users, please refer to the official installation guide for detailed instructions.

> [!NOTE]
> [Git LFS](https://git-lfs.com/) is required in this repository to handle large files, such as figures. Make sure to install it before cloning the repository.

## Usage
### Set thesis metadata 
Fill in your thesis details in the [`metadata.typ`](/metadata.typ) file: 
* Degree (Bachelor or Master)
* Your study program
* English and German title
* Advisor and supervisor
* Your name (without e-mail address or matriculation number)
* The start and submission date

### Write your thesis
For the actual content of your thesis, there is a dedicated folder named [`/content`](/content) which includes all the chapters and sections of your thesis. This applies for the proposal as well as the thesis (see [`/content/proposal`](/content/proposal) for proposal content). 
You can add or remove chapters as needed (adapt the [`thesis.typ`](/thesis.typ) with the `#include(...)` accordingly).
If you need to customize the layout of the template, you can do so by modifying the corresponding file in the [`layout`](/layout) directory.

### Build PDFs locally 
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

### Updating Your Repository to the Latest Template Version
If you have created your thesis repository using the Typst Thesis Template, you might want to update your repository to incorporate the latest changes from the template. Follow these steps to sync your repository with the latest version of the template.

**Steps to Update:**
1. Add the Template Repository as a Remote 
First, navigate to your repository in the terminal and add the original template repository as a new remote:
```sh
git remote add template https://github.com/ls1intum/thesis-template-typst.git
```

2. Fetch the latest updates from the template repository:
```sh
git fetch template
```

3. Merge the Changes into Your Repository
Merge the changes from the template's main branch into your current branch. This might require resolving merge conflicts if there are any differences between your customizations and the template's updates:
```sh
git merge template/main --allow-unrelated-histories
```

4. Resolve Merge Conflicts
If there are any merge conflicts, git will notify you. Open the conflicting files, resolve the conflicts, and then add the resolved files:
```sh
git add <resolved-file>
```

5. Commit the Merge
After resolving conflicts and adding the resolved files, commit the merge:
```sh
git commit -m "Merge updates from Typst Thesis Template"
```

6. Push the Changes to Your Repository
Finally, push the merged changes to your repository:
```sh
git push origin <branch-name>
```

## Working with the Typst Web Editor
If you prefer an integrated IDE-like experience with autocompletion and instant preview, the Typst web editor allows you to import files directly into a new or existing document. Here's how you can do this:

1. Navigate to the [Typst Web Editor](https://typst.app/).
2. Create a new blank document.
3. Click on "File" on the top left menu, then "Upload File".
4. Select all .typ and .bib files along with the figures provided in this template repository.

> [!Note]
> You can select multiple files to import. The editor will import and arrange all the files accordingly. Always ensure you have all the necessary `.typ`, `.bib`, and figures files you need for your document.

## Working with VS Code
If you prefer to have a more integrated experience with your favorite code editor, you can use the Typst VS Code extension. The extension provides syntax highlighting, autocompletion, and error checking for Typst files. You can install the extension from the [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp).

1. Open your project in VS Code
2. Set the correct file (`thesis.typ` or `proposal.typ`) as the main file. This can be done by opening the respective file and running the command `Typst: Pin the main file to the currently opened document`. Just hit `CMD + Shift + P` and search for the command.


---
## Further Resources

- [Typst Documentation](https://typst.app/docs/)
- [Typst Guide for LaTeX Users](https://typst.app/docs/guides/guide-for-latex-users/)
- [Typst VS Code Extension (inofficial)](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp)
