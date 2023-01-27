kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- components/gnome-shell.bst

sources:
- kind: git_tag
  url: github:dgsasha/dock-from-dash.git
  track: main
  ref: ea2d31416cf17bd586362a8cdd1989dc0213a299
