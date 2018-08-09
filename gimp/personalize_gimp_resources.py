#!/usr/bin/env python3
import sys
import os
import shutil
import logging
from pathlib import Path

logging.basicConfig(level=logging.DEBUG)
resources = ['brushes','patterns','gradients']

_GIMP_VER='2.8'
_GIMP_HOME='/usr/share/gimp/2.0'
_GIMP_USER_DIR="{}/.gimp-{}".format(os.environ['HOME'],_GIMP_VER)

def _getargs():
    import argparse

    parser = argparse.ArgumentParser(description="Customize personal gimp config")
    parser.add_argument('-q', dest='quiet', action='store_true')
    args = parser.parse_args()
    if args.quiet == False:
        logging.getLogger().setLevel(logging.DEBUG)
    else:
        logging.getLogger().setLevel(logging.INFO)

def copy_defaults():
    for r in resources:
        dest = '{}/{}/default/'.format(_GIMP_USER_DIR,r)
        try:
            logging.info("mkdir {}".format(dest))
            os.mkdir(dest)
        except FileExistsError:
            logging.info("default dir for {} exists".format(r))

        with open("default_{}".format(r)) as f:
            for l in [x.strip() for x in f]:
                if len(l) > 1:
                    keep = "{}/{}/{}".format(_GIMP_HOME,r,l)
                    logging.debug("Resource: {}".format(keep))
                    if Path(keep).is_dir():
                        try:
                            logging.info("Trying to create subdir {}".format(l))
                            os.mkdir('{}/{}'.format(dest,l))
                        except FileExistsError:
                            logging.info('Directory Exists')
                    else:
                        try:
                            logging.debug("shutil.copy({},'{}{}'".format(keep,dest,l))
                            shutil.copy(keep,'{}/{}'.format(dest,l))
                            logging.info("Successfully copied {}".format(keep))
                        except FileExistsError:
                            logging.info('FileExists')

def main():
    logging.debug('entering main()')
    logging.debug(_GIMP_USER_DIR)
    copy_defaults()

if __name__ == "__main__":
    _getargs()
    main()
