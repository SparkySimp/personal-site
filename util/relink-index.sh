#!/usr/bin/env bash
# Relink the index.html file to the current version of the site
# Copyright (C) 2024 Efi S. Öztürk, Kıvılcım L. Öztürk

HOST_ROOT="/var/www/vhosts/yigitovski.com"
HTTPDOCS="${HOST_ROOT}/httpdocs"
LINK_SOURCE="${HOST_ROOT}/personal-site/pages/"

# quickly exits with the error code of the last command
function bail_out {
  exit $?
}

# removes the old index.html file
function remove_old_index {
  rm -f "${HTTPDOCS}/index.html"
}

# creates a symbolic link to the current version of the site
function create_link {
  ln -s "${LINK_SOURCE}/index.html" "${HTTPDOCS}/index.html"
}

remove_old_index || bail_out
create_link || bail_out