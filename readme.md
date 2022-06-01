# a minimal demo showing how to call rust inside cpp
* linker: mold
* build system: xmake
* toolchain: clang-13
* rustc: 1.58(you have to use specific version for compatibility with clang)

# Run
```shell
cd back
cargo build --release
cd ..
xmake 
```
