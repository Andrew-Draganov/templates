# AU-beamer-template
LaTeX Beamer template for preparing talks and presentations in LaTeX in a template the matches the official AU PowerPoint template.

The template and theme has been developed without any consultancy from the Aarhus University communications department. I have gotten substantial inspiration and re-used the Logo files from the other AU \LaTeX\ templates (see https://medarbejdere.au.dk/en/administration/communication/guidelines/design/latextemplates/). In particular, all credit for the audklogos.sty work goes to Lars Madsen.

The theme deviates from the official AU PowerPoint template in a few key areas, based on my personal preference. Feedback on this is welcome. The differences are as follows: 

- Default black text replaced with the AU dark blue color as default.
- Moved author name and email up under title on front page.
- Replaced date and author title in footer with slide counter and presentation short title.
- Replaced the circle bullet with triangle for itemized lists

## Installation and use

### Overleaf
If you want to use the beamer template with Overleaf you have to do the following:

- Download or clone this repository
- Copy all the files from the Overleaf folder into overleaf (remember the images folder if you want the sample to render)
- Set the Overleaf LaTeX compiler to XeLaTeX in the project menu

See this Overleaf [example project](https://www.overleaf.com/read/gfhhfspffcjb) for reference

This method should also work for downloading and using the template as stand-alone locally. Mind you, you will have to dublicate the files for each presentation.

### Local system

The following steps should work on linux and Mac OS X. It will be updated for Windows as soon as possible (the trick is to locate the TEXMFLOCAL directory and update the texhash).

- Install the [AU fonts](https://medarbejdere.au.dk/en/administration/communication/guidelines/guidelinesforfonts/downloadfonts/browse) for *all users*
- Download or clone this repository 
- Locate the directory where latex packages are installed with `kpsewhich -var-value TEXMFLOCAL` 
- Create the beamer template directory in `TEXMFLOCAL/tex/latex/beamer-aarhusuniversity`
- Copy the file beamerthemeaarhusuniversity.sty in to the above directory
- run `sudo texhash' to update the latex package index

### Use

Remember to set the document class to `\documentclass[aspectratio=169]{beamer}` and theme  `\usetheme{aarhusuniversity}`. See sample.tex or sample.pdf for more information.

## Maketitle options
When generating the presentation title page (`\maketitle`), the template uses the following predefined LaTeX variables:

`\title[short title]{full title}`: The full title sets the title of the presentation on the title page. The short title sets the short title on the running footer.

`\author[email]{full name}`: The full name sets the author name on the title page and throughout the slideshow on the running footer. Email sets the email of the author on the title page. Email can be omitted or used for other information such as author title or event name.

`\date{date}`: The date sets the date of the presentation on the title page. The date can be omitted or used for other information such as location or event information.

`\institute{department}`: The institute sets the department name for the logo on the title page and running footer. Note: the deparment name should be uppercase when entered in the latex template.

See sample.tex or sample.pdf for more information.

## Frame options
The template contains multiple frame styles to offer options on background color and footer. These can be activated by adding the frame style key to the frame environemnt, cf`\begin{frame}[<style key>]{title}`. The frame options are as follows:

**[AUDark]** generates a frame with a dark blue background and white text similar to this slide.

**[AUGreen]** generates a frame with a green background and white text.

**[AUMagenta]** generates a frame with a magenta background and white text.

**[AUClean]** generates a frame without a footer.

**[AUDarkClean]** generates a frame with a dark blue background and without a footer.

See sample.tex or sample.pdf for more information and additional examples.

## Known issues
- LaTeX command ``\institute` do not play nice with `\MakeUppercase`. This means that when putting in department in institute you have to uppercase the department name manually to follow AU's style guide.
- The package texpos will cause a complie error on local systems. This can be ignored (press enter).
- Installing the theme locally require the AU fonts to be installed for all users.

## Comments and feedback
Issues or feature requests should be added to this gitlab repository under issues. General feedback kan be directed at korsgaard[@]cs.au.dk
