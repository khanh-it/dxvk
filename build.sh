# meson setup --cross-file build-win64.txt --buildtype release --prefix $PWD/build_dxvk/system32 build.64
# meson setup --cross-file build-win32.txt --buildtype release --prefix $PWD/build_dxvk/syswow64 build.32

mkdir -p build_dxvk

cd build.64
ninja -j 8 install
cd -

cd build.32
ninja -j 8 install
cd -

# Invariant here is that build_dxvk has system32/bin and syswow64/bin
# Create a new build_dxvk
function package {
  mkdir -p build_dxvk
  cd build_dxvk

  rm -rf packaging
  mkdir -p packaging
  cp -r system32/bin packaging/system32
  cp -r syswow64/bin packaging/syswow64

  cd packaging
  tar -cvf dxvk.tar system32 syswow64
  zstd dxvk.tar -o dxvk.tzst
  cd ../../

}

package
