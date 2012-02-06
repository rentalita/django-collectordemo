#!/bin/sh

COLLECTORDEMO_HOME="$(dirname $0)"/..
export COLLECTORDEMO_HOME

. "${COLLECTORDEMO_HOME}"/etc/common

LOCALES="es"

for locale in ${LOCALES}; do
    (
        cd "${COLLECTORDEMO_HOME}"
        "${COLLECTORDEMO_BIN}"/django-manage.sh makemessages -l "${locale}" -e .html -e .txt -e .js
        "${COLLECTORDEMO_BIN}"/django-manage.sh compilemessages -l "${locale}"
    )
done

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
