# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.0

EAPI=7

CRATES="
alga-0.9.3
ansi_term-0.11.0
approx-0.3.2
arrayref-0.3.6
arrayvec-0.5.1
atty-0.2.14
autocfg-1.0.0
base64-0.11.0
bitflags-1.2.1
blake2b_simd-0.5.10
bstr-0.2.13
byteorder-1.3.4
cfg-if-0.1.10
clap-2.33.1
constant_time_eq-0.1.5
crossbeam-utils-0.7.2
csv-1.1.3
csv-core-0.1.10
dirs-1.0.5
dirs-3.0.1
dirs-sys-0.3.5
dtoa-0.4.6
encode_unicode-0.3.6
generic-array-0.13.2
getrandom-0.1.14
heck-0.3.1
hermit-abi-0.1.15
itoa-0.4.6
lazy_static-1.4.0
libc-0.2.73
libm-0.2.1
linked-hash-map-0.5.3
matrixmultiply-0.2.3
memchr-2.3.3
nalgebra-0.19.0
num-complex-0.2.4
num-integer-0.1.43
num-rational-0.2.4
num-traits-0.2.12
ppv-lite86-0.2.8
prettytable-rs-0.8.0
proc-macro-error-1.0.3
proc-macro-error-attr-1.0.3
proc-macro2-1.0.19
quote-1.0.7
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.5.1
rand_distr-0.2.2
rand_hc-0.2.0
rand_pcg-0.2.1
rawpointer-0.2.1
redox_syscall-0.1.57
redox_users-0.3.4
regex-automata-0.1.9
rpick-0.7.0
rust-argon2-0.7.0
ryu-1.0.5
serde-1.0.114
serde_derive-1.0.114
serde_yaml-0.8.13
statrs-0.13.0
strsim-0.8.0
structopt-0.3.15
structopt-derive-0.4.8
syn-1.0.35
syn-mid-0.5.0
term-0.5.2
textwrap-0.11.0
typenum-1.12.0
unicode-segmentation-1.6.0
unicode-width-0.1.8
unicode-xid-0.2.1
vec_map-0.8.2
version_check-0.9.2
wasi-0.9.0+wasi-snapshot-preview1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
yaml-rust-0.4.4
"

inherit cargo

DESCRIPTION="Helps you pick items from a list by various algorithms"
HOMEPAGE="https://gitlab.com/bowlofeggs/rpick"
SRC_URI="$(cargo_crate_uris ${CRATES})"

# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="GPL-3 Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 CC0-1.0 MIT Unlicense"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"

DOCS=( CHANGELOG.md README.md )

# Rust packages ignore CFLAGS and LDFLAGS so let's silence the QA warnings
QA_FLAGS_IGNORED="usr/bin/rpick"

src_install() {
	cargo_src_install

	einstalldocs
}
