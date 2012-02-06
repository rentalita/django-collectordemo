#!/bin/sh

COLLECTORDEMO_TESTS=1
export COLLECTORDEMO_TESTS

COLLECTORDEMO_HOME="$(dirname $0)"
. "${COLLECTORDEMO_HOME}"/etc/common

cd "${COLLECTORDEMO_HOME}"

"${COLLECTORDEMO_BIN}"/django-migrate.sh

"${COLLECTORDEMO_BIN}"/nosetests.sh "$@"
[ $? != 0 ] && echo "ERROR!!!" && exit 1

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
