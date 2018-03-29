# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION="c-ares"
HOMEPAGE="https://abc.com"
EGIT_REPO_URI="https://github.com/c-ares/c-ares.git"
EGIT_COMMIT="cares-1_14_0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

src_install() {
	mkdir build && cd build
	cmake .. && emake DESTDIR="${D}" install
}

