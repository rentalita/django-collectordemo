#!/bin/sh

COLLECTORDEMO_HOME="$(dirname $0)"/..
export COLLECTORDEMO_HOME

. "${COLLECTORDEMO_HOME}"/etc/common

/usr/sbin/make-ssl-cert /usr/share/ssl-cert/ssleay.cnf \
    "${COLLECTORDEMO_ETC}"/server.pem --force-overwrite

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
