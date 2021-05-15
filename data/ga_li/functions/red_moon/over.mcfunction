bossbar set ga_li:redmoon players @a
scoreboard players set redmoon state 0
tellraw @a ["\u00a7a\u00a7l ✔ 血月结束 。"]
title @a title ["\u00a7a\u00a7l血月结束！"]
title @a subtitle ["\u00a7c所有怪物已经被删除！"]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1 1
execute as @e[type=#minecraft:mobs,tag=REDMoon] at @s run data modify entity @s DeathLootTable set value "none"
kill @e[type=#minecraft:mobs,tag=REDMoon]
bossbar set ga_li:redmoon visible false
time set 500