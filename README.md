# dotfiles
Period/dotfiles (more like DOOTfiles amiryt?!) for my primary multiGPU workstation running CTWM. For the most part there is nothing special other than maybe my .ctwmrc.
CTWM is rather uncommon/obscure so my config is a tad messy as I have experimented with examples and snippets I've found over the years.

There are a lot of calls to external scripts for functions and actions the WM can normally do. However because of how CTWM "understands" more than one screen per XScreen/GPU (GTK based WM/DE's can no longer do this since GTK 3) I wrote custom scripts to better control focus and window framing/placement/sizing. This means these will need to be reverted to their normal f. calls when moving to single GPU/XScreen/Monitor machines like my laptops.
