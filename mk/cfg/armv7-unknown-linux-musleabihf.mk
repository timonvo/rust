# Targets ARMv7-a with vfp3 support, using the hard float-abi and Thumb code
# generation.
CROSS_PREFIX_armv7-unknown-linux-musleabihf=$(CFG_MUSL_ROOT)/../bin/arm-linux-musleabihf-
CC_armv7-unknown-linux-musleabihf=gcc
CXX_armv7-unknown-linux-musleabihf=g++
CPP_armv7-unknown-linux-musleabihf=gcc -E
AR_armv7-unknown-linux-musleabihf=ar
CFG_INSTALL_ONLY_RLIB_armv7-unknown-linux-musleabihf = 1
CFG_LIB_NAME_armv7-unknown-linux-musleabihf=lib$(1).so
CFG_STATIC_LIB_NAME_armv7-unknown-linux-musleabihf=lib$(1).a
CFG_LIB_GLOB_armv7-unknown-linux-musleabihf=lib$(1)-*.so
CFG_JEMALLOC_CFLAGS_armv7-unknown-linux-musleabihf := -Wall -g -fPIC -D__arm__ $(CFLAGS) -march=armv7-a -DJEMALLOC_C11ATOMICS=1
CFG_GCCISH_CFLAGS_armv7-unknown-linux-musleabihf := -Wall -g -fPIC -D__arm__ $(CFLAGS) -march=armv7-a
CFG_GCCISH_CXXFLAGS_armv7-unknown-linux-gnueabi := -fno-rtti $(CXXFLAGS)
CFG_GCCISH_LINK_FLAGS_armv7-unknown-linux-musleabihf := -g
CFG_GCCISH_DEF_FLAG_armv7-unknown-linux-musleabihf :=
CFG_LLC_FLAGS_armv7-unknown-linux-musleabihf :=
CFG_INSTALL_NAME_armv7-unknown-linux-musleabihf =
CFG_EXE_SUFFIX_armv7-unknown-linux-musleabihf =
CFG_WINDOWSY_armv7-unknown-linux-musleabihf :=
CFG_UNIXY_armv7-unknown-linux-musleabihf := 1
CFG_LDPATH_armv7-unknown-linux-musleabihf :=
CFG_RUN_armv7-unknown-linux-musleabihf=$(2)
CFG_RUN_TARG_armv7-unknown-linux-musleabihf=$(call CFG_RUN_armv7-unknown-linux-musleabihf,,$(2))
CFG_GNU_TRIPLE_armv7-unknown-linux-musleabihf := armv7-unknown-linux-musleabihf
CFG_THIRD_PARTY_OBJECTS_armv7-unknown-linux-musleabihf := crt1.o crti.o crtn.o
CFG_INSTALLED_OBJECTS_armv7-unknown-linux-musleabihf := crt1.o crti.o crtn.o

NATIVE_DEPS_libc_T_armv7-unknown-linux-musleabihf += libc.a
NATIVE_DEPS_std_T_armv7-unknown-linux-musleabihf += libunwind.a crt1.o crti.o crtn.o
