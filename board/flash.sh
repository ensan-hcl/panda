#!/usr/bin/env sh
set -e
scons -u --clean --quiet
scons -u -j$(nproc)
PYTHONPATH=.. python3 -c "from python import Panda; Panda().flash('obj/panda.bin.signed')"
