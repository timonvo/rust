# arm-unknown-linux-musleabi configuration
CROSS_PREFIX_arm-unknown-linux-musleabi=$(CFG_MUSL_ROOT)/../bin/arm-linux-musleabi-
CC_arm-unknown-linux-musleabi=gcc
CXX_arm-unknown-linux-musleabi=g++
CPP_arm-unknown-linux-musleabi=gcc -E
AR_arm-unknown-linux-musleabi=ar
CFG_INSTALL_ONLY_RLIB_arm-unknown-linux-musleabi = 1
CFG_LIB_NAME_arm-unknown-linux-musleabi=lib$(1).so
CFG_STATIC_LIB_NAME_arm-unknown-linux-musleabi=lib$(1).a
CFG_LIB_GLOB_arm-unknown-linux-musleabi=lib$(1)-*.so
CFG_JEMALLOC_CFLAGS_arm-unknown-linux-musleabi := -mthumb -march=armv7-a -Wall -g -fPIC -D__arm__=1 -mfpu=vfp -DJEMALLOC_C11ATOMICS=1 $(CFLAGS)

#CFG_GCCISH_CFLAGS_arm-unknown-linux-musleabi := -mthumb -mcpu=cortex-a9 -march=armv7-a -Wall -Werror -ggdb3 -fPIC -D__arm__=1 -mfpu=vfp -funwind-tables $(CFLAGS)
CFG_GCCISH_CFLAGS_arm-unknown-linux-musleabi := -mthumb -march=armv7-a -Wall -g -fPIC -D__arm__=1 -mfpu=vfp $(CFLAGS)
CFG_GCCISH_CXXFLAGS_arm-unknown-linux-musleabi := -mthumb -march=armv7-a -Wall -g -fPIC -D__arm__=1 -mfpu=vfp -fno-rtti $(CXXFLAGS)
CFG_GCCISH_LINK_FLAGS_arm-unknown-linux-musleabi := -g
CFG_GCCISH_DEF_FLAG_arm-unknown-linux-musleabi :=
CFG_LLC_FLAGS_arm-unknown-linux-musleabi :=
CFG_INSTALL_NAME_arm-unknown-linux-musleabi =
CFG_EXE_SUFFIX_arm-unknown-linux-musleabi =
CFG_WINDOWSY_arm-unknown-linux-musleabi :=
CFG_UNIXY_arm-unknown-linux-musleabi := 1
CFG_LDPATH_arm-unknown-linux-musleabi :=
CFG_RUN_arm-unknown-linux-musleabi=$(2)
CFG_RUN_TARG_arm-unknown-linux-musleabi=$(call CFG_RUN_arm-unknown-linux-musleabi,,$(2))
CFG_GNU_TRIPLE_arm-unknown-linux-musleabi := arm-unknown-linux-musleabi
CFG_THIRD_PARTY_OBJECTS_arm-unknown-linux-musleabi := crt1.o crti.o crtn.o
CFG_INSTALLED_OBJECTS_arm-unknown-linux-musleabi := crt1.o crti.o crtn.o

NATIVE_DEPS_libc_T_arm-unknown-linux-musleabi += libc.a
NATIVE_DEPS_std_T_arm-unknown-linux-musleabi += libunwind.a crt1.o crti.o crtn.o
