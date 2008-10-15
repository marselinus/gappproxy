#!/usr/bin/python
# -*- coding: utf8 -*-

from distutils.core import setup
import py2exe

setup(
    options = {"py2exe": 
        { "optimize": 2,
          "compressed": 1,
          "bundle_files": 1
        }
    },

    name = "GAppProxy",
    version = "2008.10.15",
    description = "HTTP Proxy Service. Port: 8000",

    zipfile = None,
    console = ['proxy.py'],
    
    data_files = [
        ('',['Install.bat', 'proxy.conf', 'ReadMe.txt', 'srvany.exe', 'UnInstall.bat']) #,()
    ]
)

#python -OO setup.py py2exe --dist-dir GAppProxy
