#!/bin/sh

COLLECTORDEMO_HOME="$(dirname $0)"/..
export COLLECTORDEMO_HOME

. "${COLLECTORDEMO_HOME}"/etc/common

"${COLLECTORDEMO_BIN}"/python.sh "${COLLECTORDEMO_BIN}"/update-secret-key.py "${COLLECTORDEMO_SRC}"/python/collectordemo/settings.py

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
