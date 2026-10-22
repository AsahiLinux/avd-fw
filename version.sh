#!/bin/sh

if [ "$1" = "get-vcs" ]; then
  GIT_DIR="${MESON_SOURCE_ROOT}"/.git
  if [ ! -e "${GIT_DIR}" ]; then
    echo "Tarball either not created with \`meson dist\` or otherwise missing \"${GIT_DIR}\"."
    exit 1
  fi
  git --git-dir "$MESON_SOURCE_ROOT"/.git describe --always --dirty
elif [ "$1" = "set-dist" ]; then
  $MESONREWRITE --sourcedir="$MESON_PROJECT_DIST_ROOT" kwargs set project / version "$2"
else
  echo "$0 is expected to be executed by meson with 'get-vcs' or 'set-dist ...' as command"
  exit 1
fi
