# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION=""
HOMEPAGE=""

EGIT_REPO_URI="https://github.com/grpc/grpc.git"
EGIT_COMMIT="v1.10.0"
EGIT_SUBMODULES=()

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

src_install() {
	mkdir build && cd build
	cmake -DgRPC_ZLIB_PROVIDER=package -DgRPC_CARES_PROVIDER=package -DgRPC_SSL_PROVIDER=package -DgRPC_PROTOBUF_PROVIDER=package -DgRPC_GFLAGS_PROVIDER=package	-DgRPC_BENCHMARK_PROVIDER=package .. && emake DESTDIR="${D}" install
}

