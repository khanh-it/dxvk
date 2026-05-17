# adb push build_dxvk/packaging/dxvk.tzst /data/local/tmp
adb push build_dxvk/packaging/dxvk.tzst /sdcard/Download
# adb shell run-as com.winlator.cmod cp /data/local/tmp/dxvk-2.6.1.tzst files/installed_components/dxvk/dxvk-2.6.1.tzst
# adb shell run-as com.winlator.cmod cp /data/local/tmp/dxvk-2.6.1.tzst files/installed_components/dxvk/dxvk-2.6.2.tzst
# com.ludashi.benchmark
# files/contents/DXVK/2.6-2-gplasync-1/system32

# adb shell mkdir /data/local/tmp/system32/
# adb shell mkdir /data/local/tmp/syswow64/
# adb push build_dxvk/packaging/system32/* /data/local/tmp/system32/
# adb push build_dxvk/packaging/syswow64/* /data/local/tmp/syswow64/
# adb shell run-as com.winlator.cmod cp /data/local/tmp/system32/* files/contents/DXVK/1.10.3-1/system32/
# adb shell run-as com.winlator.cmod cp /data/local/tmp/system32/* files/imagefs/home/xuser/.wine/drive_c/windows/system32/
# adb shell run-as com.winlator.cmod ls -lh files/imagefs/home/xuser/.wine/drive_c/windows/system32/d3d11.dll

# adb shell run-as com.ludashi.benchmark cp /data/local/tmp/system32/* files/contents/DXVK/2.6-2-gplasync-1/system32
# adb shell run-as com.ludashi.benchmark cp /data/local/tmp/system32/* files/imagefs/home/xuser/.wine/drive_c/windows/system32/
# adb shell run-as com.ludashi.benchmark cp /data/local/tmp/syswow64/* files/contents/DXVK/2.6-2-gplasync-1/syswow64
# adb shell run-as com.ludashi.benchmark cp /data/local/tmp/syswow64/* files/imagefs/home/xuser/.wine/drive_c/windows/syswow64/
# adb shell run-as com.ludashi.benchmark ls -lh files/imagefs/home/xuser/.wine/drive_c/windows/system32/d3d11.dll
# adb shell run-as com.ludashi.benchmark ls -lh files/contents/DXVK/2.6-2-gplasync-1/system32/d3d11.dll
# adb shell run-as com.ludashi.benchmark ls -lh files/contents/DXVK/2.6-2-gplasync-1/system32/d3d9.dll
