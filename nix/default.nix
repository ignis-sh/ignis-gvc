{
  lib,
  fetchFromGitLab,
  stdenv,
  wrapGAppsHook4,
  pkg-config,
  ninja,
  meson,
  glib,
  gobject-introspection,
  libpulseaudio,
}: let
  gvc = fetchFromGitLab {
    domain = "gitlab.gnome.org";
    owner = "GNOME";
    repo = "libgnome-volume-control";
    rev = "5f9768a2eac29c1ed56f1fbb449a77a3523683b6";
    hash = "sha256-gdgTnxzH8BeYQAsvv++Yq/8wHi7ISk2LTBfU8hk12NM=";
  };
in
  stdenv.mkDerivation {
    name = "ignis-gvc";
    src = ./..;

    nativeBuildInputs = [
      meson
      ninja
      pkg-config
      gobject-introspection
      wrapGAppsHook4
    ];

    buildInputs = [
      glib
      libpulseaudio
    ];

    patchPhase = ''
      mkdir -p ./subprojects/gvc
      cp -r ${gvc}/* ./subprojects/gvc
    '';

    meta = with lib; {
      description = "A standalone libgvc for Ignis";
      homepage = "https://github.com/ignis-sh/ignis-gvc";
      license = licenses.mit;
      platforms = platforms.linux;
      maintainers = with maintainers; [linfkrg];
    };
  }
