kind: manual
sources:
- kind: git_tag
  track: master
  url: github:itsManjeet/srclang.git

  ref: bd912af5b7ee7e508f95ef4af23101a85ec6390e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  build-commands:
  - make
  install-commands:
  - install -Dm0755 -t "%{install-root}%{bindir}" srclang
  - install -Dm0644 -t "%{install-root}/usr/lib/srclang/" modules/std.src
