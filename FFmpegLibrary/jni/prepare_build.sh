#!/bin/sh
svn checkout http://libyuv.googlecode.com/svn/trunk/ libyuv

cd freetype2 && ./autogen.sh && cd ..

cd fribidi && autoreconf -ivf && cd ..

cd libass && autoreconf -ivf && cd ..

cd vo-aacenc && autoreconf -ivf && cd ..

cd vo-amrwbenc && autoreconf -ivf && cd ..
