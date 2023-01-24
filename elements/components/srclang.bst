kind: cmake
sources:
- kind: git_tag
  track: master
  url: github:itsManjeet/srclang.git

  ref: cde825913a9c08ae0c7b0c24e5406b5c2be393b9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/curl.bst
- components/boost.bst

