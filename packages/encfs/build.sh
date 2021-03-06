TERMUX_PKG_MAINTINER="Henrik Grimler @Grimler91"
TERMUX_PKG_HOMEPAGE=https://github.com/vgough/encfs
TERMUX_PKG_DESCRIPTION="EncFS provides an encrypted filesystem in user-space"
TERMUX_PKG_VERSION=1.9.5
TERMUX_PKG_SHA256=4709f05395ccbad6c0a5b40a4619d60aafe3473b1a79bafb3aa700b1f756fd63
TERMUX_PKG_DEPENDS="libfuse, openssl"
TERMUX_PKG_SRCURL=https://github.com/vgough/encfs/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DFUSE_INCLUDE_DIR=$TERMUX_PREFIX/include
-DFUSE_LIBRARIES=$TERMUX_PREFIX/lib/libfuse.so
-DRUN_HAVE_POSIX_REGEX=0
-DRUN_HAVE_STD_REGEX=0
-DRUN_HAVE_STEADY_CLOCK=0
"

termux_step_pre_configure () {
	LDFLAGS="$LDFLAGS -llog"
}
