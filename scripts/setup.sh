#! /bin/bash

kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-subdir-a
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-subdir-b
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-subdir-c
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-subdir-c/cb-subsubdir-c-a
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-subdir-c/cb-subsubdir-c-b
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-1/cb-dep-subsubpkg-1-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-2
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-2/cb-dep-subsubpkg-2-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-2/cb-dep-subsubpkg-2-2
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-2/cb-dep-subsubpkg-2-2/cb-dep-subsubsubpkg-2-2-1
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-2/cb-dep-subsubpkg-2-3
kpt pkg get https://github.com/liamfallon/upstream-packages/nginx-dir-named@nginx-dir-v1 connacht-base/cb-dep-subpkg-3

kpt pkg get https://github.com/liamfallon/upstream-packages/wonderful-feature@wf-v1 connacht-base/wf
kpt pkg get https://github.com/liamfallon/upstream-packages/wonderful-feature@wf-v1 connacht-base/cb-subdir-a/cb-subdir-a-wf
kpt pkg get https://github.com/liamfallon/upstream-packages/wonderful-feature@wf-v1 connacht-base/cb-subdir-c/cb-subsubdir-c-a/cb-subsubdir-c-a-wf
kpt pkg get https://github.com/liamfallon/upstream-packages/wonderful-feature@wf-v1 connacht-base/cb-dep-subpkg-2/cb-dep-subsubpkg-2-3/cb-dep-subsubpkg-2-3-wf
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/bm
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/wf/wf-bm
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/cb-subdir-a/cb-subdir-a-wf/cb-subdir-a-wf-bm
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/cb-subdir-c/cb-subsubdir-c-a/cb-subsubdir-c-a-wf/cb-subsubdir-c-a-wf-bm
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/cb-dep-subpkg-2/cb-dep-subsubpkg-2-3/cb-dep-subsubpkg-2-3-wf/cb-dep-subsubpkg-2-3-wf-bm
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/cb-subdir-b/cb-subdir-b-bm
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/cb-subdir-c/cb-subsubdir-c-b/cb-subsubdir-c-b-bm
kpt pkg get https://github.com/liamfallon/upstream-packages/boring-middleware@bm-v1 connacht-base/cb-dep-subpkg-2/cb-dep-subsubpkg-2-2/cb-dep-subsubsubpkg-2-2-1/cb-dep-subsubsubpkg-2-2-1-bm

rm connacht-base/cb-subdir-a/Kptfile
rm connacht-base/cb-subdir-a/package-context.yaml
rm connacht-base/cb-subdir-a/starlark-set-to-dir-name.yaml
rm connacht-base/cb-subdir-b/Kptfile
rm connacht-base/cb-subdir-b/package-context.yaml
rm connacht-base/cb-subdir-b/starlark-set-to-dir-name.yaml
rm connacht-base/cb-subdir-c/Kptfile
rm connacht-base/cb-subdir-c/package-context.yaml
rm connacht-base/cb-subdir-c/starlark-set-to-dir-name.yaml
rm connacht-base/cb-subdir-c/cb-subsubdir-c-a/Kptfile
rm connacht-base/cb-subdir-c/cb-subsubdir-c-a/package-context.yaml
rm connacht-base/cb-subdir-c/cb-subsubdir-c-a/starlark-set-to-dir-name.yaml
rm connacht-base/cb-subdir-c/cb-subsubdir-c-b/Kptfile
rm connacht-base/cb-subdir-c/cb-subsubdir-c-b/package-context.yaml
rm connacht-base/cb-subdir-c/cb-subsubdir-c-b/starlark-set-to-dir-name.yaml

yq -i 'del(.upstream, .upstreamLock, .status)' connacht-base/Kptfile

kpt fn render connacht-base
