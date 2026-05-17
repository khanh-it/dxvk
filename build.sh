cd build.64
ninja install
cd -

cd build.32
ninja install
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
