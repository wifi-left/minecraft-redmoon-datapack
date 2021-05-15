function minecraft:skill
function minecraft:texi
scoreboard players set @a[scores={DieT=1..100}] water 100
execute as @a[scores={DieT=1..100}] at @s store result score @s DieX run data get entity @s Pos[0]
execute as @a[scores={DieT=1..100}] at @s store result score @s DieY run data get entity @s Pos[1]
execute as @a[scores={DieT=1..100}] at @s store result score @s DieZ run data get entity @s Pos[2]
tellraw @a[scores={DieT=1..100}] ["\u00a7c\u00a7l 您死了。\n \u00a7b⛏ 死亡坐标：\n \u00a7a[x:",{"score":{"name":"*","objective":"DieX"},"color":"green"},"\u00a7a,y:",{"score":{"name":"*","objective":"DieY"},"color":"green"},"\u00a7a,z:",{"score":{"name":"*","objective":"DieZ"},"color":"green"},"\u00a7a]"]
scoreboard players set @a[scores={DieT=1..100}] DieT 0
function ga_li:red_moon/main
function teleport:main