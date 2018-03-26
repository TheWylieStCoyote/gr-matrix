/* -*- c++ -*- */

#define MATRIX_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "matrix_swig_doc.i"

%{
#include "matrix/multiply.h"
%}


%include "matrix/multiply.h"
GR_SWIG_BLOCK_MAGIC2(matrix, multiply);
