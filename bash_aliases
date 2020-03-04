#!/bin/bash

# Print current branches in a repo from oldest to newest, while displaying info
# about latest commit.
format_refname="%(color:yellow)%(refname:short)%(color:reset)"
format_commit="%(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))"
format="%(HEAD) $format_refname - $format_commit"
alias gb="git for-each-ref --sort=committerdate refs/heads/ --format='$format'"

