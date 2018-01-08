#!/usr/bin/env python3
import sys
import os
import shutil
from pathlib import Path

resources=['brushes','patterns','gradients']

_GIMP_VER='2.8'
_GIMP_HOME='/usr/share/gimp/2.0'
_GIMP_USER_DIR="{}/gimp-{}/".format(os.environ['HOME'],_GIMP_VER)

print(_GIMP_USER_DIR)


for r in resources:
    with open("default_{}.txt".format(r)) as f:
        for l in f:
            keep = "{}/{}/{}".format(_GIMP_HOME,r,l)
            print(keep)
#    for d in os.listdir('/usr/share/gimp/2.0/'+r):
#        p = '/usr/share/gimp/2.0/{}/{}'.format(r,d)
#        print(p)
#        if Path(p).is_dir():
#            try:
#                shutil.copytree('/usr/share/gimp/2.0/{}/{}'.format(r,d),'/home/jacob/.gimp-2.8/{}/{}'.format(r,d))
#            except FileExistsError:
#                print('FileExists')
#        else:
            try:
                print("shutil.copy(keep,'/home/jacob/.gimp-2.8/{}/defaults/{}'.format(r,l))")
            except FileExistsError:
                print('FileExists')
