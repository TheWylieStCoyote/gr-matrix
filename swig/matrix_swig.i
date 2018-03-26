/* -*- c++ -*- */

#define MATRIX_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "matrix_swig_doc.i"

%{
#include "matrix/multiply.h"
#include "matrix/multiply_const.h"
#include "matrix/invert.h"
#include "matrix/eigen.h"
#include "matrix/correlate.h"
#include "matrix/const_source.h"
%}


%include "matrix/multiply.h"
GR_SWIG_BLOCK_MAGIC2(matrix, multiply);
%include "matrix/multiply_const.h"
GR_SWIG_BLOCK_MAGIC2(matrix, multiply_const);
%include "matrix/invert.h"
GR_SWIG_BLOCK_MAGIC2(matrix, invert);
%include "matrix/eigen.h"
GR_SWIG_BLOCK_MAGIC2(matrix, eigen);
%include "matrix/correlate.h"
GR_SWIG_BLOCK_MAGIC2(matrix, correlate);
%include "matrix/const_source.h"
GR_SWIG_BLOCK_MAGIC2(matrix, const_source);
