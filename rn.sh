#!/bin/bash
#run under Linux/Mac OS, Windows sucks!
rename -v 's/mario\-(\d{1})\.ini$/demo\-$1\.ini/' *.ini
rename -v 's/luigi\-(\d{1})\.ini$/iris\-$1\.ini/' *.ini
rename -v 's/peach\-(\d{1})\.ini$/kood\-$1\.ini/' *.ini
rename -v 's/toad\-(\d{1})\.ini$/raocow\-$1\.ini/' *.ini
rename -v 's/link\-(\d{1})\.ini$/steath\-$1\.ini/' *.ini

