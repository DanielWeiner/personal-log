pkgname=personal-log
pkgver=0.1.0
pkgrel=1
pkgdesc="A command-line tool to jot things down. Use it for notes, journaling, anything you'd use a plain text file for."
arch=(any)
depends=(less vim)
package() {
	mkdir -p "$pkgdir/usr/local"
    mkdir -p "$pkgdir/etc/profile.d"
    local env_vars_dest="$pkgdir/etc/profile.d/personal-log-env.sh"

    local sh_dest_dir="$pkgdir/usr/local/bin"
    local personal_log_dest="$sh_dest_dir/personal-log"
    local searchlog_dest="$sh_dest_dir/searchlog"
    local readlog_dest="$sh_dest_dir/readlog"

    install -Dm644 "$srcdir/personal-log-env.sh" "$env_vars_dest"
    install -Dm755 "$srcdir/personal-log" "$personal_log_dest"
    install -Dm755 "$srcdir/searchlog" "$searchlog_dest"
    install -Dm755 "$srcdir/readlog" "$readlog_dest"
}