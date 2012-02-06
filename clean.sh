#!/bin/sh

COLLECTORDEMO_TESTS=
export COLLECTORDEMO_TESTS

COLLECTORDEMO_HOME="$(dirname $0)"
. "${COLLECTORDEMO_HOME}"/etc/common

cd "${COLLECTORDEMO_HOME}"

"${COLLECTORDEMO_BIN}"/python.sh setup.py -q clean "$@"
[ $? != 0 ] && echo "ERROR!!!" && exit 1

find . -name "*~" | xargs rm -f
find . -name "*.pyc" | xargs rm -f

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
