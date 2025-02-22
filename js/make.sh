set -e

# moe.matsur.exe.* -> no js build
[ $1 == "hysteria" ] && exit
[ $1 == "tuic" ] && exit

HTML=../app_$1/html
SRC=./plugin_$1

webpack --entry "$SRC"/main.js

rm -rf "$HTML"
mkdir -p "$HTML"
cp plugin.html "$HTML"
cp dist/p.js "$HTML"
