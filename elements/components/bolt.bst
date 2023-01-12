kind: manual

sources:
- kind: git_tag
  track: master
  url: github:itsmanjeet/bolt.git

  ref: 2030873ee3eed9e9adad4e12c4f490e25cfcbc26
- kind: go-vendor
  ref: 238b9e677bd8ba523838cf048f3a2bbe21dc071a17a4f258aafe8d61a2dd2f57
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/go.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- components/vosk-api.bst

config:
  build-commands:
  - make

  install-commands:
  - make install DESTDIR=%{install-root} PREFIX=%{prefix} SYSCONFDIR=%{sysconfdir}
  - |
    for i in plugin/* ; do
      install -v -D -m0644 -t %{install-root}%{datadir}/bolt/plugins/ ${i}/$(basename $i).so
    done

  - ln -sv bolt-client %{install-root}%{bindir}/bolt
