#!/bin/sh

case $1 in
    clean)
        rm -v -- index.html site.tar.xz
        for d in */; do
            rm -- "$(basename "$d").html"
            if [ -e "$d/make" ]; then
                cd "$d"
                sh ./make clean
                cd "$OLDPWD"
            fi
        done
        ;;
    tarball)
        if [ -e site.tar.xz ]; then
            rm -v -- site.tar.xz
        fi
        tarfiles=$(mktemp)
        : > "$tarfiles"
        find . -name '*.html' >> "$tarfiles"
        find . -name '*.css' >> "$tarfiles"
        find . -type f | grep assets >> "$tarfiles"
        # The grep is to remove any hidden directories.
        tar cvf - $(grep -v '/\..*/' "$tarfiles") | xz > site.tar.xz
        rm -v -- "$tarfiles"
        ;;
    host)
        darkhttpd .
        ;;
    *)
        ./.bin/setupmake
        ./.bin/setupcss
        ./.bin/mki > index.html
        for d in */; do
            if [ -e "$d/make" ]; then
                cd "$d"
                sh ./make
                cd "$OLDPWD"
            fi
            ./.bin/mkh "$d" > "$(basename "$d").html"
        done
        ;;
esac
