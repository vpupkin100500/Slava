cc = clang
cflags = -O3 -ffast-math -flto -march=native -mtune=native -fno-plt -fno-stack-protector -fomit-frame-pointer -fstrict-aliasing -fslp-vectorize -fvectorize -fno-semantic-interposition -mllvm --inline-threshold=1000000 -mllvm --interleave-loops -mllvm --enable-load-pre
ldflags = -Wl,-O3 -Wl,--lto-O3 -Wl,--gc-sections -s -static -fuse-ld=lld

all:
	$(cc) a.c $(cflags) $(ldflags) -o a.out
