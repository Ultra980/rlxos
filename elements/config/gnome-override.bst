kind: import
sources:
- kind: local
  path: files/config/gnome-overrides/org.gnome.shell-enabled-extensions.gschema.override

depends:
- components/gnome-shell-extension-blur-my-shell.bst
- components/gnome-shell-extension-gsconnect.bst
- components/gnome-shell-extension-dash-from-dock.bst
- components/gnome-pie.bst

config:
  source: /
  target: /usr/share/glib-2.0/schemas

public:
  bst:
    integration-commads:
    - glib-compile-schemas usr/share/glib-2.0/schemas