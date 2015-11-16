./configure --target=arm-unknown-linux-musleabi \
    --musl-root=/home/timonvo/Applications/musl/arm-linux-musleabi/arm-linux-musleabi \
    --prefix=/home/timonvo/Applications/musl/arm-linux-musleabi/arm-linux-musleabi \
    --disable-optimize --disable-optimize-cxx --disable-optimize-llvm --disable-docs \
    --disable-optimize-tests --enable-fast-make --disable-stage0-landing-pads \
    --disable-jemalloc