# modern cpp with rust
## Try to find a way to call rust from within cpp side.
There are some tools I have used.
* linker: [mold](https://github.com/rui314/mold)
* build system: [xmake](https://github.com/xmake-io/xmake)
* compile toolchain: clang-13
* rustc: 1.59.0(you have to use specific version for [compatibility](https://doc.rust-lang.org/rustc/linker-plugin-lto.html#toolchain-compatibility) with clang)
* interoperation: [cxx](https://cxx.rs/)

# Run
```shell
xmake 
xmake run
```
# TODO
- [x] LTO/IPO support
- [x] CI/CD
- [x] Dockerfile
# Credits
* This project is almost a fork of [cxx-cmake-example](https://github.com/XiangpengHao/cxx-cmake-example) .
* explain the steps of [lto](https://blog.llvm.org/2019/09/closing-gap-cross-language-lto-between.html) 
* [rustc lto plugin](https://doc.rust-lang.org/rustc/linker-plugin-lto.html)
