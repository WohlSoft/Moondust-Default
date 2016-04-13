#!/bin/bash
cp ../SMBX/counters.ini .
cp ../SMBX/engine.ini .
cp ../SMBX/sounds.ini .
cp ../SMBX/sound_roles.ini .
#cp ../SMBX/music.ini .
cp ../SMBX/rotation_table.ini .
cp ../SMBX/lunadll_settings.ini .
cp ../SMBX/lvl_*.ini .
cp ../SMBX/wld_*.ini .
#rm -f characters/*
rm -Rf script/*
#cp -ra ../SMBX/characters . #Don't update calibrations because there are customized
cp -ra ../SMBX/fonts .
cp -ra ../SMBX/script .
cp -ra ../SMBX/group_tilesets .
cp -ra ../SMBX/tilesets .
rm -Rf ./tilesets/_backup
rm -Rf ./tilesets/xxx
cd characters
../rn.sh
cd ..
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
sed -i 's/\.gif/\.png/g' 'lvl_npc.ini'
sed -i 's/\.gif/\.png/g' 'lvl_blocks.ini'
sed -i 's/\.gif/\.png/g' 'lvl_bgo.ini'
sed -i 's/\.gif/\.png/g' 'lvl_effects.ini'
sed -i 's/\.gif/\.png/g' 'lvl_characters.ini'
sed -i 's/\.gif/\.png/g' 'wld_levels.ini'
sed -i 's/\.gif/\.png/g' 'wld_tiles.ini'
sed -i 's/\.gif/\.png/g' 'wld_paths.ini'
sed -i 's/\.gif/\.png/g' 'wld_scenery.ini'
cp ../lvl_bkgrd.ini ./lvl_bkgrd.ini

sed -i 's/#008080/#004000/g' 'engine.ini'
sed -i 's/Goomba/Furba/g' 'lvl_npc.ini'
sed -i 's/goomba/furba/g' 'lvl_npc.ini'
mv script/npcs/para_goomba.lua script/npcs/para_furba.lua
mv script/npcs/switch_goomba.lua script/npcs/switch_furba.lua
sed -i 's/Koopa/Goopa/g' 'lvl_npc.ini'
sed -i 's/Volcano lotus/Love frog/g' 'lvl_npc.ini'

sed -i 's/Dungeon Ball/Money bag/g' 'lvl_npc.ini'
sed -i 's/Crystal sphere/Mason jar/g' 'lvl_npc.ini'
sed -i 's/SMB3 Card Roulette/Card Roulette/g' 'lvl_npc.ini'
sed -i 's/name\=\"Star\"/name\=\"Leek\"/g' 'lvl_npc.ini'
sed -i 's/Yoshi/Catnip/g' 'lvl_npc.ini'
sed -i 's/Gold ring (Sonic)/Golden tooth/g' 'lvl_npc.ini'
sed -i 's/Poison mushroom/Old cheese/g' 'lvl_npc.ini'
sed -i 's/Buzzy Beetle/Skull/g' 'lvl_npc.ini'
sed -i "s/Buzzy's Shell/Skull \(stomped\)/g" 'lvl_npc.ini'
sed -i 's/Cheep-Cheep/Catfish/g' 'lvl_npc.ini'
sed -i "s/Peach's bomb/Kood's bomb/g" 'lvl_npc.ini'
sed -i "s/Toad's Boomerang/Raocow's gamepad/g" 'lvl_npc.ini'
sed -i 's/Exit point/Exit tape/g' 'lvl_npc.ini'
sed -i 's/Blargg/Submarine/g' 'lvl_npc.ini'


