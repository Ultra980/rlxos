kind: cmake

sources:
- kind: git_tag
  track: master
  url: github:itsmanjeet/bolt.git

  ref: 455dddfd706f8437d69f87b885e6ee6b117ea746

- kind: local
  path: files/bolt/command_not_found.fish

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- components/vosk-api.bst

# config:
#   install-commands:
#     (>):
#     - install -Dm0644 -t %{install-root}%{sysconfdir}/fish/conf.d command_not_found.fish
