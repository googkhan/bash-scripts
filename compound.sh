exists() { [[ -x $(type -P "$1" 2>/dev/null) ]]; }
exists gpg || echo "Please install GPG." <&2

hello() { [[ -x $( "ls -t" >/dev/null) ]]; }
hello Gokhan || :
