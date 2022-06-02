add_rules("mode.debug", "mode.release")

target("cm")
set_toolchains("clang-13")
set_languages("cxx17")
set_kind("binary")
add_files("src/*.cpp")
add_includedirs("back/target/cxxbridge/back/src/")
add_includedirs("include/")
add_files("back/target/cxxbridge/back/src/lib.rs.cc")
add_links("back")
add_links("stdc++")
add_cxflags("-flto=thin")
-- add_links("pthread")
-- add_links("dl")
add_linkdirs("back/target/release/")
add_ldflags("-fuse-ld=lld")
add_ldflags("-flto=thin")
