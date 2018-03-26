INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_MATRIX matrix)

FIND_PATH(
    MATRIX_INCLUDE_DIRS
    NAMES matrix/api.h
    HINTS $ENV{MATRIX_DIR}/include
        ${PC_MATRIX_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    MATRIX_LIBRARIES
    NAMES gnuradio-matrix
    HINTS $ENV{MATRIX_DIR}/lib
        ${PC_MATRIX_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MATRIX DEFAULT_MSG MATRIX_LIBRARIES MATRIX_INCLUDE_DIRS)
MARK_AS_ADVANCED(MATRIX_LIBRARIES MATRIX_INCLUDE_DIRS)

