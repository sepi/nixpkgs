{ stdenv, fetchurl, pkgconfig, gtk2, jack2 }:

let
  version = "2.5";
in stdenv.mkDerivation rec {
  name = "jack-keyboard-${version}";

  meta = with stdenv.lib; {
    description = "Virtual jack MIDI keyboard";
    homepage    = "http://jack-keyboard.sourceforge.net";
    license     = licenses.bsd3;
    platforms   = platforms.linux;
    maintainers = with maintainers; [ sepi ];
  };

  src = fetchurl {
    url = "mirror://sourceforge/jack-keyboard/${name}.tar.gz";
    sha256 = "0mzmg8aavybcfdlq2yd9d0vscqd6is5p6jzrgfpfm5j3xdcvh2s3";
  };

  buildInputs = [ pkgconfig gtk2 jack2 ];
}
