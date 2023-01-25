kind: autotools

sources:
- kind: tar
  url: github_files:flatpak/flatpak-builder/releases/download/1.2.3/flatpak-builder-1.2.3.tar.xz

  ref: e257825a47f7a3e71e30fb0f80f2d9ac6e4801f746f552dfaf0e564e3ee351c8
build-depends:
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

runtime-depends:
- components/eu-strip.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/patch.bst

depends:
- components/flatpak.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libyaml.bst
- freedesktop-sdk.bst:bootstrap-import.bst
