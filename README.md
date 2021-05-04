# Taxonomic complexity in eyebrights (*Euphrasia* L., Orobanchaceae) and the British flora

This is my PhD Thesis, completed at the University of Edinburgh from October 2016 - October 2020.

In my thesis, I used pandoc (version 2.2.3.2) on a Mac to compile markdown files into a latex-like book. Out of the box, pandoc goes pretty far, although in places throughout the thesis I have had to inject raw latex to get what I wanted. Luckily, this is super easy to do, by writing in the markdown files directly, and supplying libraries and macros through the -H command line option for pandoc.

The most important files are the 'meta.yaml' which supplies general formatting for every page of the main document, and 'build_all.bash' which is a little script to generate the entire thesis from scratch. It should be clear what I did from those two scripts. I'd like to thank Jim Downie for initial help with the files.

To compile, run:

`bash buid_all.bash`

The pdf is in the file: `MBrown_Thesis_all.pdf`.