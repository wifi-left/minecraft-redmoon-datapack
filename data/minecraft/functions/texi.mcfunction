tag @a remove J1
execute as @a at @s if block ~ ~ ~ minecraft:campfire run tag @s add J1
execute as @a at @s if block ~ ~1 ~ minecraft:nether_portal run tag @s add J1
scoreboard players add @a[tag=J1] ScoN 1
title @a[tag=!J1,scores={ScoN=1..400}] actionbar ["\u00a7c\u00a7lBREAK !"]
scoreboard players reset @a[tag=!J1] ScoN

title @a[tag=J1] actionbar [{"score":{"name":"*","objective":"ScoN"},"color":"green"},"\u00a7c / \u00a7a150"]
execute as @a[scores={ScoN=150..300}] at @s if block ~ ~ ~ minecraft:campfire run effect give @s minecraft:levitation 5 10 true
execute as @a[scores={ScoN=150..300}] at @s if block ~ ~ ~ minecraft:campfire run effect give @s minecraft:slow_falling 15 1 true
execute as @a[scores={ScoN=150..300}] at @s if block ~ ~1 ~ minecraft:nether_portal run spreadplayers ~ ~ 2 2 under 110 false @s
##