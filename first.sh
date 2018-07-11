#!/bin/sh

/usr/bin/nosetests --with-xunit --all-modules --traverse-namespace --with-coverage --cover-package=/opt/zhanzhao/project1 --cover-inclusive

python -m coverage xml --include=/opt/zhanzhao/project1*

/usr/bin/pylint -f parseable -d I0011,R0801 /opt/zhanzhao/project1 | tee pylint.out
