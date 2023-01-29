kind: cmake

sources:
- kind: git_tag
  track: master
  url: github:itsmanjeet/bolt.git

  ref: 2e3bd5de6321726425456e74ca1a0466b477adcb

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
