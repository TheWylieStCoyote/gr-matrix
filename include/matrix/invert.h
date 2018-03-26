/* -*- c++ -*- */
/* 
 * Copyright 2018 Wylie Standage-Beier.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#ifndef INCLUDED_MATRIX_INVERT_H
#define INCLUDED_MATRIX_INVERT_H

#include <matrix/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
  namespace matrix {

    /*!
     * \brief <+description of block+>
     * \ingroup matrix
     *
     */
    class MATRIX_API invert : virtual public gr::sync_block
    {
     public:
      typedef boost::shared_ptr<invert> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of matrix::invert.
       *
       * To avoid accidental use of raw pointers, matrix::invert's
       * constructor is in a private implementation
       * class. matrix::invert::make is the public interface for
       * creating new instances.
       */
      static sptr make(shape, vlen, method);
    };

  } // namespace matrix
} // namespace gr

#endif /* INCLUDED_MATRIX_INVERT_H */
