# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION="protobuf"
HOMEPAGE="https://developers.google.com/protocol-buffers/"

EGIT_REPO_URI="https://github.com/google/protobuf.git"
EGIT_COMMIT="v3.5.2"
EGIT_SUBMODULES=()

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

src_install() {
	cd cmake
	mkdir build && cd build
	cmake -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_MODULE_COMPATIBLE=ON .. && emake DESTDIR="${D}" install
}

