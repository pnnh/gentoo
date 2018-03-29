# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
SLOT="0"
DESCRIPTION="A classical example to use when starting on something new."
HOMEPAGE="http://wiki.gentoo.org/index.php?title=Basic_guide_to_write_Gentoo_Ebuilds"
 
LICENSE="MIT"
KEYWORDS="amd64"

SRC_URI="http://dev.gentoo.org/~tomwij/files/wiki/hello-world-1.0.tar.gz"

src_install() {
    dobin hello-world
}

echo 'hello==============================='
