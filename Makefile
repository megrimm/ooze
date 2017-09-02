# Makefile for Ooze Lib
#
# To build on OSX use:
# make pdincludepath=/Applications/Pd.app/Contents/Resources/include/

# library name
lib.name = clarinet

# input source file (class name == source file basename)
class.sources = \
	clarinet.cpp \

# build for 64 bit only
arch := x86_64

# add extra files
datafiles = README.md

# include stk header files
FLEXTPATH=/usr/local/include/flext
# include stk header files
STKPATH=/usr/local/include/stk
# add include paths to cflags
cflags += -I"$(FLEXTPATH)" -I"$(STKPATH)"

include pd-lib-builder/Makefile.pdlibbuilder

