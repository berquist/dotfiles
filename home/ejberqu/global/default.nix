{ config, lib, pkgs, inputs, ... }:

{
  home = {
    username = "ejberqu";
    packages = with pkgs; [
      # abseil ccache gcc graphite2 jpeg-xl libidn libvmaf mpdecimal perl re2
      # tree-sitter aom gd graphviz jq libidn2 libx11 mpfr pigz readline
      # unbound apr certifi gdbm grep juliaup libksba libxau ncurses pinentry
      # utf8proc apr-util clisp gdk-pixbuf grpc liblqr libxcb netpbm pipx
      # rlwrap uv aspell cmake gettext gts kubernetes-cli libmagic libxdmcp
      # nettle pixman rsync webp autoconf coreutils hadolint leptonica libmpc
      # libxext ninja pkgconf ruby x265 automake ghostscript harfbuzz
      # libarchive libnghttp2 libxft nlohmann-json plotutils xorgproto awk
      # giflib highway libassuan libomp libxrender node popt shared-mime-info
      # xxhash bash dive git-extras hiredis libavif libpng libyaml npth
      # potrace shellcheck xz bash-language-server dos2unix git-filter-repo
      # libb2 libraw little-cms2 oniguruma protobuf softnet dotdrop git-gui
      # icu4c@75 libde265 librsvg llvm openexr pstoedit spdlog yq bear duf
      # icu4c@76 libdeflate libsigsegv lmod openjdk pyenv sqlite z3
      # berkeley-db@5 glib imagemagick libevent libssh2 lua openjpeg
      # pyenv-virtualenv subversion zopfli blake3 gmp imath libgcrypt libtasn1
      # luajit openssl@1.1 pyright tart zstd brotli gnu-sed isl libgit2
      # libtiff lz4 openssl@3 python-packaging tcl-tk@8 c-ares fmt gnu-tar
      # jansson libgit2@1.7 libtool lzo p11-kit python-pathspec tesseract
      # ca-certificates fontconfig gnupg jasper libgit2@1.8 libunistring m4
      # pandoc python@3.12 texinfo cairo freetype gnutls jbig2dec libgpg-error
      # libusb make pango python@3.13 texlive catch2 fribidi go jpeg-turbo
      # libheif libuv minikube pcre2 pyyaml

      # font-fira-mono macfuse protege wezterm
      bat
      difftastic
      eza
      fd
      gh
      glab
      htop
      just
      (python3.withPackages (ps: with ps; [
        editorconfig
        flake8
        libxml2
        mypy
        pylint
        yamllint
      ]))
      ripgrep
      ruff
      tree
    ];
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_: true);
    };
    overlays = [
      inputs.emacs-overlay.overlays.emacs
    ];
  };

  programs = {
    direnv.enable = true;
    emacs = {
      enable = true;
      package = pkgs.emacs-unstable;
      extraPackages = (epkgs: [ epkgs.treesit-grammars.with-all-grammars ]);
    };
    # gpg = {
    #   enable = true;
    #   mutableKeys = true;
    #   mutableTrust = true;
    # };
    home-manager.enable = true;
    less.enable = true;
    man = {
      generateCaches = true;
    };
  };
}
