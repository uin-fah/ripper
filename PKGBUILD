pkgname="ripper"
pkgver="0.0.1"
pkgrel="1"
pkgdesc="Multi platform downloader and converter"
arch=("x86_64")
license=(CUSTOM)
groups=()
depends=(ffmpeg youget)
makedepends=()
optdepends=()
source=("ripper")
sha256sums=('SKIP')


package(){
    mkdir -p $pkgdir/usr/bin
    install -D -m755 ripper $pkgdir/usr/bin/$pkgname
}