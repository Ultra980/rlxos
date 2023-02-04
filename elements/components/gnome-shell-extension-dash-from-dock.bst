kind: meson

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- components/gnome-shell.bst

sources:
- kind: git_tag
  url: github:dgsasha/dock-from-dash.git
  track: main
  ref: ea2d31416cf17bd586362a8cdd1989dc0213a299

- kind: patch
  path: files/gnome-shell-extensions/dash-from-dock/0001-rlxos-default-configurations.patch

config:
  install-commands:
    (>):
    - glib-compile-schemas %{install-root}%{datadir}/gnome-shell/extensions/dock-from-dash@fthx/schemas