v1.3.1
Remove `libdrmframework_jni.so` as replacing it caused Media Storage not to work on A11

---

v1.3.0
Added several DRM-related files:
```
/system/vendor/lib/libmm-hdcpmgr.so
/system/vendor/lib/liboemcrypto.so
/system/vendor/lib/libwvhidl.so
/system/vendor/lib64/lib-sec-disp.so
/system/vendor/lib64/libSecureUILib.so
/system/vendor/lib64/libmm-hdcpmgr.so
/system/vendor/lib64/libsecureui.so
/system/vendor/lib64/libsecureui_svcsock.so
```

Added firmware DRM blobs:
```
/system/etc/firmware/dxhdcp2.b00
/system/etc/firmware/dxhdcp2.b01
/system/etc/firmware/dxhdcp2.b02
/system/etc/firmware/dxhdcp2.b03
/system/etc/firmware/dxhdcp2.b04
/system/etc/firmware/dxhdcp2.b05
/system/etc/firmware/dxhdcp2.b06
/system/etc/firmware/dxhdcp2.mdt

/system/vendor/firmware/widevine.b00
/system/vendor/firmware/widevine.b01
/system/vendor/firmware/widevine.b02
/system/vendor/firmware/widevine.b03
/system/vendor/firmware/widevine.b04
/system/vendor/firmware/widevine.b05
/system/vendor/firmware/widevine.b06
/system/vendor/firmware/widevine.mdt
```

---

v1.2.0
Added another DRM-related file (CAS)

---

v1.1.0
Handle removal of DRM-related files from /data properly

---

v1.0.0
Added module modes — use FULL for a thorough removal, use LIGHT when FULL causes issues
Added another permissions file
Added some more libs

---

v0.3.0
Beta release -- use at your own responsibility
Added framework .jars and .odex/.vdex files for removal
Added init scripts to be removed
Added lib info to CONTRIBUTING.md
Added more DRM libs for removal
Added a permissions file and vendor directories for removal

---

v0.2.0
Beta release -- use at your own responsibility
Added some .rc files and a vendor-specific DRM service
Fixed sound not working on some devices — removed /vendor/etc/init DRM .rc files

---

v0.1.0
Beta release -- use at your own responsibility
Added more directories and files for removal
Removed binary DRM blobs (from some manufacturers, such as LG)

---

v0.0.2
Alpha release -- use at your own responsibility
Added a few more directories to remove

---

v0.0.1
Initial alpha release -- use at your own responsibility
Disables liboemcrypto, mediadrmserver, drmserver and vendor hw drm services
