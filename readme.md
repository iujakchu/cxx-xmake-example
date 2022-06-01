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
# TODO
- [ ] LTO/IPO support
- [ ] CI/CD
# Credits
[cxx-cmake-example](https://github.com/XiangpengHao/cxx-cmake-example) This project is almost a fork of this example.
[lto](https://blog.llvm.org/2019/09/closing-gap-cross-language-lto-between.html) 
