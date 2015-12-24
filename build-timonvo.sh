./configure --target=x86_64-unknown-linux-gnu,arm-unknown-linux-musleabi \
    --musl-root=/home/timonvo/Applications/musl/arm-linux-musleabi/arm-linux-musleabi \
    --prefix=/home/timonvo/Applications/musl/arm-linux-musleabi/arm-linux-musleabi \
    --disable-docs \
    --enable-fast-make \
    --disable-stage0-landing-pads \
    --disable-manage-submodules
    #--disable-jemalloc \
    #--disable-optimize --disable-optimize-cxx --disable-optimize-llvm \
    #--disable-optimize-tests \