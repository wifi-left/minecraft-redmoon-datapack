bossbar set ga_li:redmoon visible true
tellraw @a ["\n\u00a7c\u00a7l ✂ Redmoon \u00a7c血月 \n\u00a7e\u00a7o     Redmoon\n\u00a7a--------------------------------------------------\n     \u00a7e血月降临。在这期间，所有\u00a7a\u00a7l主世界怪物\u00a7e都会加强，\n     您无法睡觉度过（会直接爆炸？），但击杀怪物后奖励\u00a71\u00a7l十分丰厚\u00a7e。\n"]
title @a title ["\u00a7c\u00a7lRedmoon \u00a7c血月"]
title @a subtitle ["\u00a7e即将降临"]
scoreboard players set tick GA_REDMOON 0
scoreboard players set redmoon state 1
execute as @a at @s run playsound minecraft:entity.turtle.egg_break player @s ~ ~ ~ 1 1 1
kill @e[type=iron_golem]
advancement grant @a only story/custom