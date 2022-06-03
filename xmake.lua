add_rules("mode.release")

local rust_backend = "back"
target("xm")
before_build(function(target)
	os.cd("back")
	os.exec("cargo build --release --verbose")
	os.cd("..")
	os.mkdir("after", "after/include")
	os.cp("back/target/cxxbridge/back/src/*.h", "after/include/")
	os.cp("back/target/cxxbridge/back/src/*.cc", "after/")
	os.cp("back/target/cxxbridge/rust/*.h", "after/include/")
end)
set_toolchains("clang-13")
set_languages("cxx17")
set_kind("binary")

add_files("src/*.cpp")
add_includedirs("src/include")

add_files("after/**.cc", { always_added = true })
add_includedirs("after/include")

add_links("stdc++")
add_linkdirs(rust_backend .. "/target/release/")
add_links(rust_backend)

add_cxflags("-flto=thin")
add_ldflags("-flto=thin")
add_ldflags("-fuse-ld=mold")
