#!/bin/sh

COLLECTORDEMO_HOME="$(dirname $0)"/..
export COLLECTORDEMO_HOME

. "${COLLECTORDEMO_HOME}"/etc/common

FILENAME="$1"

if [ "${FILENAME}" = "" ]; then
    FILENAME="${COLLECTORDEMO_DATA}"/django-load.json
fi

"${COLLECTORDEMO_BIN}"/django-manage.sh dumpdata --natural | "${COLLECTORDEMO_BIN}"/python.sh -mjson.tool > "${FILENAME}"

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
