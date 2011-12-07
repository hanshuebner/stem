This is the Porter Stemming Algorithm, somewhat mechanically hand
translated to Common Lisp by Steven M. Haflich smh@franz.com Feb 2002.
Most of the inline comments refer to the original C code.  At the time
of this translation the code passes the associated Porter test files.
See the function test at the end of this file.

This port is intended to be portable ANSI Common Lisp.  However, it
has only been compiled and tested with Allegro Common Lisp.  This code
is offered in the hope it will be useful, but with no warranty of
correctness, suitability, usability, or anything else.  The C
implementation from which this code was derived was not reentrant,
relying on global variables.  This implementation corrects that.  It
is intended that a word to be stemmed will be in a string with
fill-pointer, as this is a natural result when parsing user input, web
scraping, whatever.  If not, a string with fill-pointer is created,
but this is an efficiency hit and is here intended only for
lightweight use or testing.  Using some resource mechanism on these
strings would be a useful improvement, whether here or in the calling
code.

This code is also available at the site Porter maintains for
implementation of the stemmer.  See:
http://www.tartarus.org/~martin/PorterStemmer

Postscript: When I contacted Michael Porter about this anachronism, he
decided to fix the C version to implement proper reentrancy.  The CL
version is now also served from his central site.  It should be
functionally identical to this one, modulo the current comment and a
couple harmless formatting and comment changes.

The stemmer itself is contained entirely in the file stem.cl.  The
other two files are input and correct output for the standard test
suite for the algorithm.  See the commented-out function `test' in
stem.cl.
