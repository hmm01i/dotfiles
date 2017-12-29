#!/usr/bin/env python3
import sys
import os
import shutil
from pathlib import Path

resources=['brushes','patterns','gradients']

_GIMP_VER='2.8'
_GIMP_HOME='/usr/share/gimp/2.0/'
_GIMP_USER_DIR="{}/gimp-{}/".format(os.environ['HOME'],_GIMP_VER)

print(_GIMP_USER_DIR)

for r in resources:
    
    for d in os.listdir('/usr/share/gimp/2.0/'+r):
        p = '/usr/share/gimp/2.0/{}/{}'.format(r,d)
        print(p)
        if Path(p).is_dir():
            try:
                shutil.copytree('/usr/share/gimp/2.0/{}/{}'.format(r,d),'/home/jacob/.gimp-2.8/{}/{}'.format(r,d))
            except FileExistsError:
                print('FileExists')
        else:
            try:
                shutil.copy('/usr/share/gimp/2.0/{}/{}'.format(r,d),'/home/jacob/.gimp-2.8/{}/{}'.format(r,d))
            except FileExistsError:
                print('FileExists')
