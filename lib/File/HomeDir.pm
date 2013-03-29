class File::HomeDir;

method my_home {
    given $*OS {
        when 'MSWin32' {
            return %*ENV<HOMEDRIVE> ~ %*ENV<HOMEPATH>
        }
        when 'linux' {
            return %*ENV<HOME>
        }
    }
}
