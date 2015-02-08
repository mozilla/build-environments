#!/usr/bin/env python

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
        print('Usage: compile_mozharness_config.py <mozharness config> <jinja2 template>')
        sys.exit()

    config_vars = parse_config_file(sys.argv[1])
    template_file = os.path.abspath(sys.argv[2])
    print(compile_template(config_vars, template_file))
