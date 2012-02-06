#!/bin/sh

COLLECTORDEMO_TESTS=
export COLLECTORDEMO_TESTS

COLLECTORDEMO_HOME="$(dirname $0)"
. "${COLLECTORDEMO_HOME}"/etc/common

cd "${COLLECTORDEMO_HOME}"

TARGET="$@"
TARGET="${TARGET:-develop}"

"${COLLECTORDEMO_BIN}"/python.sh setup.py -q ${TARGET}
[ $? != 0 ] && echo "ERROR!!!" && exit 1

"${COLLECTORDEMO_BIN}"/django-migrate.sh
"${COLLECTORDEMO_BIN}"/django-load.sh

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
