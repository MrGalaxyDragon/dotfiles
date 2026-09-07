final: prev: {
  makemkv-2026-08 = prev.symlinkJoin {
    name = "makemkv-2026-08";

    paths = [
      prev.makemkv
    ];

    nativeBuildInputs = [
      prev.makeWrapper
    ];

    postBuild = ''
      wrapProgram $out/bin/makemkv \
        --set LD_PRELOAD "${prev.libfaketime}/lib/libfaketime.so.1" \
        --set FAKETIME "@2026-08-01 00:00:00" \
        --set FAKETIME_DONT_RESET "1"
    '';
  };
}
