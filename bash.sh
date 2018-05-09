# Warn user about things
printf "WARNING: this script will NOT work if Xcode is installed\nWARNING: this$
# First, set the "FLAGS" variable to an iOS-friendly one
FLAGS="-stdlib=libc++ -isysroot /Applications/Xcode.app/Contents/Developer/Plat$
# Than, set "CFLAGS" to configure a valid makefile
CFLAGS=$FLAGS CXXFLAGS=$FLAGS ./configure --with-included-pcre2 --host=armv7-ap$
# Build bash
make
# Fakesign the "bash" binary
ldid -S bash
# Tell the user the script succeeded
echo "All done. Check the \"bash\" binary in the current folder."
