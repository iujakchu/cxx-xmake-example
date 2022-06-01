# modern cpp with rust
There are some tools I have used.
* linker: [mold](https://github.com/rui314/mold)
* build system: [xmake](https://github.com/xmake-io/xmake)
* compile toolchain: clang-13
* rustc: 1.58.1(you have to use specific version for [compatibility](https://doc.rust-lang.org/rustc/linker-plugin-lto.html#toolchain-compatibility) with clang)
* interoperation: [cxx](https://cxx.rs/)

# Run
```shell
cd back
cargo build --release
cd ..
xmake 
```
# TODO
- [ ] LTO/IPO support
- [ ] CI/CD
# Credits
* This project is almost a fork of [cxx-cmake-example](https://github.com/XiangpengHao/cxx-cmake-example) .
* [lto](https://blog.llvm.org/2019/09/closing-gap-cross-language-lto-between.html) 
