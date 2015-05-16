with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "dwm-HEAD";

  src = builtins.filterSource
    (path: type: (toString path) != (toString ./.git)) ./.;

  buildInputs = [ xlibs.libX11 xlibs.libXft xlibs.libXinerama ];

  prePatch = ''
    substituteInPlace config.mk --replace '/usr/local' $out
  '';

  meta = with stdenv.lib; {
    description = "Dynamic window manager for X";
    homepage = http://dwm.suckless.org/;
    license = licenses.mit;
    platforms = platforms.all;
  };
}
