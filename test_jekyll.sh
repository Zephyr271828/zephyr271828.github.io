#!/bin/bash
# Use Homebrew Ruby — macOS system Ruby (2.6) is too old for this site's
# bundler (2.6.2) and gems. Prepend it so `bundle`/`ruby` resolve correctly.
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# jekyll-jupyter-notebook needs the `jupyter` CLI (installed in conda base).
# Append so it's found even when the conda base env isn't active.
export PATH="$PATH:/opt/homebrew/Caskroom/miniconda/base/bin"

bundle exec jekyll serve
