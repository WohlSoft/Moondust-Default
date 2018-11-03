#!/bin/bash

source ./ini_val.sh

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

# New NPCs

updateEffect()
{
    dos2unix -q "items/npc/npc-$1.ini"

    if [ "$GFX_FRAMES" != "" ]; then
        ini_val "lvl_effects.ini" effect-$1.frames $GFX_FRAMES
    fi

    unix2dos -q "lvl_effects.ini"
    unset GFX_FRAMES
}


updNpc()
{
    dos2unix -q "items/npc/npc-$1.ini"

    if [ "$GFX_H" != "" ]; then
        sed -i "s/gfx-height.*/gfx-height = $GFX_H/g" "items/npc/npc-$1.ini"
    fi
    if [ "$GFX_W" != "" ]; then
        sed -i "s/gfx-width.*/gfx-width = $GFX_W/g" "items/npc/npc-$1.ini"
    fi

    if [ "$GFX_FS" != "" ]; then
        sed -i "s/frame-style.*/frame-style = $GFX_FS/g" "items/npc/npc-$1.ini"
    fi

    if [ "$GFX_FRAMES" != "" ]; then
        sed -i "s/frames.*=.*/frames = $GFX_FRAMES/g" "items/npc/npc-$1.ini"
    fi

    if [ "$NPC_NAME" != "" ]; then
        sed -i "s/name.*=.*/name = \"$NPC_NAME\"/g" "items/npc/npc-$1.ini"
    fi

    unix2dos -q "items/npc/npc-$1.ini"
    unset GFX_FS
    unset GFX_H
    unset GFX_W
    unset GFX_FRAMES
    unset NPC_NAME
}

GFX_FRAMES=4
GFX_FS=1
NPC_NAME="Gummy"
updNpc 1

GFX_FRAMES=4
updateEffect 4

GFX_FS=1
updNpc 2

GFX_FS=1
updNpc 3

GFX_FS=1
updNpc 27

GFX_FS=1
updNpc 59

GFX_FS=1
updNpc 61

GFX_FS=1
updNpc 63

GFX_FS=1
updNpc 65

GFX_FS=1
updNpc 71

GFX_FS=1
updNpc 89

GFX_W=48
GFX_H=48
GFX_FRAMES=1
updNpc 16

GFX_W=56
GFX_H=68
GFX_FRAMES=1
updNpc 37

GFX_FRAMES=6
updNpc 125

GFX_W=40
GFX_H=38
GFX_FRAMES=2
GFX_FS=2
NPC_NAME="Blastor (red)"
updNpc 130

GFX_W=40
GFX_H=38
GFX_FRAMES=2
GFX_FS=2
NPC_NAME="Blastor (dark cyan)"
updNpc 131

GFX_W=40
GFX_H=38
GFX_FRAMES=2
GFX_FS=2
NPC_NAME="Blastor (grey)"
updNpc 132

GFX_W=16
GFX_H=16
NPC_NAME="Blastor bullet"
updNpc 133

GFX_W=32
GFX_H=40
GFX_FS=1
GFX_FRAMES=3
NPC_NAME="Punken"
updNpc 165

GFX_W=32
GFX_H=36
GFX_FRAMES=2
GFX_FS=1
NPC_NAME="Punken (Stomped)"
updNpc 166

GFX_W=36
GFX_H=54
GFX_FS=0
GFX_FRAMES=2
NPC_NAME="Octolot"
updNpc 235

