# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3 autotools flag-o-matic multilib-minimal toolchain-funcs

DESCRIPTION="Google's Protocol Buffers - Extensible mechanism for serializing structured data"
HOMEPAGE="https://developers.google.com/protocol-buffers/ https://github.com/google/protobuf"
EGIT_REPO_URI="https://github.com/google/protobuf.git"

LICENSE="BSD"
SLOT="0/15"
KEYWORDS="amd64"
IUSE="static-libs zlib"

RDEPEND="zlib? ( sys-libs/zlib[${MULTILIB_USEDEP}] )"
DEPEND="${RDEPEND}"

DOCS=(CHANGES.txt CONTRIBUTORS.txt README.md)

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	append-cppflags -DGOOGLE_PROTOBUF_NO_RTTI
	multilib-minimal_src_configure
}

multilib_src_configure() {
	local myeconfargs=(
		$(use_enable static-libs static)
		$(use_with zlib)
	)

	ECONF_SOURCE="${S}" econf "${myeconfargs[@]}"
}

src_compile() {
	multilib-minimal_src_compile
}

multilib_src_compile() {
	default
}

multilib_src_test() {
	emake check
}

