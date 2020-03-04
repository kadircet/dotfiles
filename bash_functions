#!/bin/bash
function gmd {
  local current_brach="$(git rev-parse --abbrev-ref HEAD)"
  git checkout master
  git merge --ff-only $current_brach
  git branch -d $current_brach
}
