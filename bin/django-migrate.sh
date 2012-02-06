#!/bin/sh

COLLECTORDEMO_HOME="$(dirname $0)"/..
export COLLECTORDEMO_HOME

. "${COLLECTORDEMO_HOME}"/etc/common

"${COLLECTORDEMO_BIN}"/django-manage.sh syncdb --noinput
"${COLLECTORDEMO_BIN}"/django-manage.sh migrate

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
