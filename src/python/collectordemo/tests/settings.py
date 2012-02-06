# -*- coding: utf-8 -*-

from collectordemo.settings import *

import os

DEBUG = True
TEMPLATE_DEBUG = DEBUG

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.environ['COLLECTORDEMO_DB'] + os.sep + 'tests.db',
    }
}

ROOT_URLCONF = 'collectordemo.tests.urls'

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
