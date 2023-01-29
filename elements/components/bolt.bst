kind: cmake

sources:
- kind: git_tag
  track: master
  url: github:itsmanjeet/bolt.git

  ref: 434db24f06c9e6d0448fdc6a8adf950684047b09

- kind: local
  path: files/bolt/command_not_found.fish

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- components/vosk-api.bst

config:
  install-commands:
    (>):
    - install -Dm0644 -t %{install-root}%{sysconfdir}/fish/conf.d command_not_found.fish