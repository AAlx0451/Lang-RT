rm -rf *.o;
for f in src/*.c; do clang -marm -c $f -O3 -Iinclude; done
for f in src/*.s; do clang -c $f -O3 -nostdlib; done
ar rcs librt.a *o;
rm -rf *o;
