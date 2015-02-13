#!/usr/bin/env python
# ***** BEGIN LICENSE BLOCK *****
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.
# ***** END LICENSE BLOCK *****

'''
Compile jinja2 templates with variables passed in from a mozharness config.
'''

import jinja2
from mozharness.base.config import parse_config_file


def compile_template(template_vars, template_file):
    templateLoader = jinja2.FileSystemLoader(searchpath="/")
    templateEnv = jinja2.Environment(loader=templateLoader)
    template = templateEnv.get_template(template_file)
    return template.render(template_vars)

if __name__ == '__main__':
    import os
    import sys

    if len(sys.argv) < 3:
        print('Usage: compile_mozharness_config.py <jinja2 template>'
              ' <mozharness config ... >')
        sys.exit()

    template_file = os.path.abspath(sys.argv[1])
    config_vars = {}
    for moz_config in sys.argv[2:]:
        config_vars.update(parse_config_file(moz_config))
    print(compile_template(config_vars, template_file))
