# CannyEdgeDetectionParallelized
APP project

Initial description by the serial code author:

"Canny" edge detector code:
---------------------------

This text file contains the source code for a "Canny" edge detector. It
was written by Mike Heath (heath@csee.usf.edu) using some pieces of a
Canny edge detector originally written by someone at Michigan State
University.

There are three 'C' source code files in this text file. They are named
"canny_edge.c", "hysteresis.c" and "pgm_io.c". They were written and compiled
under SunOS 4.1.3. Since then they have also been compiled under Solaris.
To make an executable program: (1) Separate this file into three files with
the previously specified names, and then (2) compile the code using

  gcc -o canny_edge canny_edge.c hysteresis.c pgm_io.c -lm
  (Note: You can also use optimization such as -O3)

The resulting program, canny_edge, will process images in the PGM format.
Parameter selection is left up to the user. A broad range of parameters to
use as a starting point are: sigma 0.60-2.40, tlow 0.20-0.50 and,
thigh 0.60-0.90.

If you are using a Unix system, PGM file format conversion tools can be found
at ftp://wuarchive.wustl.edu/graphics/graphics/packages/pbmplus/.
Otherwise, it would be easy for anyone to rewrite the image I/O procedures
because they are listed in the separate file pgm_io.c.

If you want to check your compiled code, you can download grey-scale and edge
images from http://marathon.csee.usf.edu/edge/edge_detection.html. You can use
the parameters given in the edge filenames and check whether the edges that
are output from your program match the edge images posted at that address.

Mike Heath
(10/29/96)
