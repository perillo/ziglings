#!/bin/bash

# Override the cache directories so that each `zig build` run will have a clean
# cache.
#
# This fixes the freeze on windows-latest.
export ZIG_GLOBAL_CACHE_DIR="$(pwd)/zig-global-cache"
export ZIG_LOCAL_CACHE_DIR="$(pwd)/zig-local-cache"

zig build --verbose test
