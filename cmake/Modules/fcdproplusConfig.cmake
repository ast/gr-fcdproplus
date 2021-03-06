INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_FCDPROPLUS fcdproplus)

FIND_PATH(
    FCDPROPLUS_INCLUDE_DIRS
    NAMES fcdproplus/api.h
    HINTS $ENV{FCDPROPLUS_DIR}/include
        ${PC_FCDPROPLUS_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    FCDPROPLUS_LIBRARIES
    NAMES gnuradio-fcdproplus
    HINTS $ENV{FCDPROPLUS_DIR}/lib
        ${PC_FCDPROPLUS_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(FCDPROPLUS DEFAULT_MSG FCDPROPLUS_LIBRARIES FCDPROPLUS_INCLUDE_DIRS)
MARK_AS_ADVANCED(FCDPROPLUS_LIBRARIES FCDPROPLUS_INCLUDE_DIRS)

