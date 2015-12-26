# Targets ARMv6 with vfp float support, using the hard float-abi and ARM code
# generation.
CROSS_PREFIX_arm-unknown-linux-musleabihf=$(CFG_MUSL_ROOT)/../bin/arm-linux-musleabihf-
CC_arm-unknown-linux-musleabihf=gcc
CXX_arm-unknown-linux-musleabihf=g++
CPP_arm-unknown-linux-musleabihf=gcc -E
AR_arm-unknown-linux-musleabihf=ar
CFG_INSTALL_ONLY_RLIB_arm-unknown-linux-musleabihf = 1
CFG_LIB_NAME_arm-unknown-linux-musleabihf=lib$(1).so
CFG_STATIC_LIB_NAME_arm-unknown-linux-musleabihf=lib$(1).a
CFG_LIB_GLOB_arm-unknown-linux-musleabihf=lib$(1)-*.so
CFG_JEMALLOC_CFLAGS_arm-unknown-linux-musleabihf := -Wall -g -fPIC -D__arm__$(CFLAGS) -march=armv6 -marm -DJEMALLOC_C11ATOMICS=1
CFG_GCCISH_CFLAGS_arm-unknown-linux-musleabihf := -Wall -g -fPIC -D__arm__$(CFLAGS) -march=armv6 -marm
CFG_GCCISH_CXXFLAGS_arm-unknown-linux-gnueabi := -Wall -g -fPIC -D__arm__ $(CXXFLAGS)
CFG_GCCISH_LINK_FLAGS_arm-unknown-linux-musleabihf := -g
CFG_GCCISH_DEF_FLAG_arm-unknown-linux-musleabihf :=
CFG_LLC_FLAGS_arm-unknown-linux-musleabihf :=
CFG_INSTALL_NAME_arm-unknown-linux-musleabihf =
CFG_EXE_SUFFIX_arm-unknown-linux-musleabihf =
CFG_WINDOWSY_arm-unknown-linux-musleabihf :=
CFG_UNIXY_arm-unknown-linux-musleabihf := 1
CFG_LDPATH_arm-unknown-linux-musleabihf :=
CFG_RUN_arm-unknown-linux-musleabihf=$(2)
CFG_RUN_TARG_arm-unknown-linux-musleabihf=$(call CFG_RUN_arm-unknown-linux-musleabihf,,$(2))
CFG_GNU_TRIPLE_arm-unknown-linux-musleabihf := arm-unknown-linux-musleabihf
CFG_THIRD_PARTY_OBJECTS_arm-unknown-linux-musleabihf := crt1.o crti.o crtn.o
CFG_INSTALLED_OBJECTS_arm-unknown-linux-musleabihf := crt1.o crti.o crtn.o

NATIVE_DEPS_libc_T_arm-unknown-linux-musleabihf += libc.a
NATIVE_DEPS_std_T_arm-unknown-linux-musleabihf += libunwind.a crt1.o crti.o crtn.o
