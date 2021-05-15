execute as @a[nbt={SelectedItem:{id:"minecraft:music_disc_11",tag:{upzom:1b}}}] at @s run execute as @e[distance=1..12,type=#minecraft:mobs] at @s run data merge entity @s {Motion:[0.0,0.4,0.0]}
execute as @a[nbt={SelectedItem:{id:"minecraft:music_disc_11",tag:{upzom:1b}}}] at @s run execute as @e[distance=1..12,type=#minecraft:mobs] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{goitem:1b}}}] at @s run execute as @e[distance=1..20,type=item] run tp @s ~ ~ ~
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{pickit:1b}}}] at @s run execute as @e[distance=1..12,type=!player,type=!ender_dragon] run tp @s ^ ^0.5 ^4
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{pickit:1b}}}] at @s run execute as @e[distance=1..12,type=ender_dragon] run tp @s ^ ^0.5 ^10
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{pickit:1b}}}] at @s run execute as @e[distance=1..12,type=!player] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{pickit:1b}}}] at @s run execute as @e[distance=1..12,type=!player] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=item,nbt={Item:{id:"minecraft:minecart"}}] run summon minecart ~ ~ ~
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=item,nbt={Item:{id:"minecraft:minecart"}}] run kill @s
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run effect give @s minecraft:jump_boost 2 255 true
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=minecart] run tp @s ^ ^0.5 ^0.5
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=minecart] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=boat] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=boat] run tp @s ^ ^0.5 ^0.5
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=minecart] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1
execute as @a[nbt={SelectedItem:{id:"minecraft:feather",tag:{flycar:1b}}}] at @s run execute as @e[distance=0..2,type=boat] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1
##-106b
execute as @a[nbt={Inventory:[{id:"minecraft:music_disc_11",tag:{upzom:1b},Slot:-106b}]}] at @s run execute as @e[distance=1..12,type=#minecraft:mobs] at @s run data merge entity @s {Motion:[0.0,0.4,0.0]}
execute as @a[nbt={Inventory:[{id:"minecraft:music_disc_11",tag:{upzom:1b},Slot:-106b}]}] at @s run execute as @e[distance=1..12,type=#minecraft:mobs] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1
execute as @a[nbt={Inventory:[{id:"minecraft:stick",tag:{goitem:1b},Slot:-106b}]}] at @s run execute as @e[distance=1..20,type=item] run tp @s ~ ~ ~
execute as @a[nbt={Inventory:[{id:"minecraft:stick",tag:{pickit:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..12,type=!player,type=!item] run tp @s ^ ^0.5 ^3
execute as @a[nbt={Inventory:[{id:"minecraft:stick",tag:{pickit:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..12,type=!player,type=!item] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1
execute as @a[nbt={Inventory:[{id:"minecraft:stick",tag:{pickit:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..12,type=!player,type=!item] run data merge entity @s {Motion:[0.0,0.0,0.0]}

##effect give @s minecraft:slow_falling 5 1 true
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run effect give @s minecraft:jump_boost 2 255 true
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=item,nbt={Item:{id:"minecraft:minecart"}}] run summon minecart ~ ~ ~
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=item,nbt={Item:{id:"minecraft:minecart"}}] run kill @s
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=minecart] run tp @s ^ ^0.5 ^0.5
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=minecart] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=boat] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=boat] run tp @s ^ ^0.5 ^0.5
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=minecart] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{flycar:1b},Slot:-106b}]}] at @s run execute as @e[distance=0..2,type=boat] at @s run particle minecraft:dust 5.0 5.0 5.0 2 ~ ~ ~ 0.1 0.1 0.1 2 1