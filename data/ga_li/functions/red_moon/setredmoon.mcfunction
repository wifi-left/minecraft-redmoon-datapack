##scoreboard players set set state 1
execute if score set state matches 0 run scoreboard players set set state -1
execute if score set state matches -2 run scoreboard players set set state -1
execute if score set state matches 72000 run scoreboard players set set state -2
execute if score set state matches 36000 run scoreboard players set set state 72000
execute if score set state matches 24000 run scoreboard players set set state 36000
execute if score set state matches 12000 run scoreboard players set set state 24000
execute if score set state matches 6000 run scoreboard players set set state 12000
execute if score set state matches 1200 run scoreboard players set set state 6000
execute if score set state matches -1 run scoreboard players set set state 1200
function minecraft:settingsg
execute if score set state matches -2 run tellraw @s ["\u00a7b您也可以使用自定义时间： \u00a7c\u00a7l/scoreboard players set set state <时间(tick)(20tick=1s)>"]