# droidcam2v4l2

Daemon that bridges Android cameras to V4L2, using droidmedia and v4l2loopback.

## Build dependencies

- libdroidmedia-dev
- libyuv-dev (if rotation support is enabled)
- libglib2.0-dev
- pkgconf

## Runtime dependencies

- v4l2loopback (kernel driver)
- libyuv0
- libglib2.0-0

## Build
```
gcc `pkg-config --cflags gio-2.0` -DSUPPORT_ROTATION=1 -o droidcam2v4l2 src/droidcam2v4l2.c `pkg-config --libs gio-2.0` -ldroidmedia -lyuv
```

If you can't (or don't want to) use libyuv, you can set `SUPPORT_ROTATION` to 0.
