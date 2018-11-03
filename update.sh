#!/bin/bash

sed -i 's/#008080/#004000/g' 'engine.ini'

mv script/player/peach.lua script/player/kood.lua
mv script/player/mario.lua script/player/demo.lua
mv script/player/luigi.lua script/player/iris.lua
mv script/player/toad.lua script/player/raocow.lua
mv script/player/link.lua script/player/steath.lua

sed -i 's/name\=\"Peach\"/name\=\"Kood\"/g' 'lvl_characters.ini'
sed -i 's/name\=\"Mario\"/name\=\"Demo\"/g' 'lvl_characters.ini'
sed -i 's/name\=\"Luigi\"/name\=\"Iris\"/g' 'lvl_characters.ini'
sed -i 's/name\=\"Toad\"/name\=\"Raocow\"/g' 'lvl_characters.ini'
sed -i 's/name\=\"Link\"/name\=\"Steath\"/g' 'lvl_characters.ini'
sed -i 's/folder\=\"peach\"/folder\=\"Kood\"/g' 'lvl_characters.ini'
sed -i 's/folder\=\"mario\"/folder\=\"Demo\"/g' 'lvl_characters.ini'
sed -i 's/folder\=\"luigi\"/folder\=\"Iris\"/g' 'lvl_characters.ini'
sed -i 's/folder\=\"toad\"/folder\=\"Raocow\"/g' 'lvl_characters.ini'
sed -i 's/folder\=\"link\"/folder\=\"Steath\"/g' 'lvl_characters.ini'
sed -i 's/peach/kood/g' 'lvl_characters.ini'
sed -i 's/mario/demo/g' 'lvl_characters.ini'
sed -i 's/luigi/iris/g' 'lvl_characters.ini'
sed -i 's/toad/raocow/g' 'lvl_characters.ini'
sed -i 's/link/steath/g' 'lvl_characters.ini'

