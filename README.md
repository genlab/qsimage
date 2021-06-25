# qsimage

A tiny R package that leverages [qs](https://github.com/traversc/qs) to
save a complete image of the global environment.

The idea was to closely emulate R's built-in `save.image()` and `laod()` for 
saving and subsequently loading a complete copy of the global environment.

The image file is fixed as "~/session.qs".

## Installation

To install qsimage:

```r
remotes::install_github("sellorm/qsimage")
```

## Usage

The best way to the package is via the RStudio "Addins" drop down menu.
