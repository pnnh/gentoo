# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION="msgpack"
HOMEPAGE=""

EGIT_REPO_URI="https://github.com/msgpack/msgpack-c.git"
EGIT_COMMIT="cpp-2.1.5"
EGIT_SUBMODULES=()

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

src_install() {
	mkdir build && cd build
	cmake .. && emake DESTDIR="${D}" install
}

