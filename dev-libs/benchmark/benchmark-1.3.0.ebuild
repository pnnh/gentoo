# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION=""
HOMEPAGE=""

EGIT_REPO_URI="https://github.com/google/benchmark.git"
EGIT_COMMIT="v1.3.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

src_install() {
	mkdir build && cd build
	cmake -DBENCHMARK_ENABLE_TESTING=OFF .. && emake DESTDIR="${D}" install
}

